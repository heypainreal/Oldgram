#!/usr/bin/env python3
"""Переводит отправляемые TL-типы (input*) на схему 228.

Запросы — половина дела: внутри них уезжают объекты (inputChannel,
inputDocumentFileLocation, inputDocument, ...), у которых тоже сменились
конструкторы и ширина идентификаторов. Раскладку берём из scheme_228.tl.

    python3 tools/modernize_input_types.py [--dry]
"""
import glob
import os
import re
import sys

ALIASES = {'id': 'n_id', 'hash': 'n_hash'}


def parse_scheme(path='scheme_228.tl'):
    scheme = {}
    for line in open(path):
        m = re.match(r'^([a-zA-Z0-9_.]+)#([0-9a-f]{8})\s*(.*?)= ([A-Za-z0-9_.]+);', line)
        if m:
            scheme[m.group(1)] = (int(m.group(2), 16), m.group(3).strip())
    return scheme


def legacy_properties(class_name, text):
    properties = {}
    for match in re.finditer(
            r'@interface\s+([A-Za-z0-9_$]+)\s*:\s*([A-Za-z0-9_$]+)(.*?)@end', text, re.S):
        name, _, body = match.groups()
        if name not in (class_name, class_name.split('$')[0]):
            continue
        for prop in re.finditer(
                r'@property\s*\([^)]*\)\s*([A-Za-z0-9_<>* ]+?)\s*\*?\s*(\w+);', body):
            properties[prop.group(2)] = prop.group(1).strip()
    return properties


def write_field(field, properties, supported_bits=None):
    """Одно поле схемы -> строка сериализации.

    Необязательные поля отправляем, если такое свойство есть у старого класса:
    биты флагов Telegram сохраняет между слоями, поэтому старое значение flags
    остаётся верным. Неподдержанные биты вычищаются маской.
    """
    if ':' not in field:
        return ''
    name, kind = field.split(':', 1)
    if kind == '#':
        return None                             # флаги пишем отдельно, с маской

    condition = None
    if '?' in kind:
        gate, kind = kind.split('?', 1)
        if not gate.startswith('flags.'):
            return ''                           # flags2 у старых классов нет
        bit = int(gate.split('.')[1])
        prop = name if name in properties else ALIASES.get(name, name)
        if prop not in properties or 'flags' not in properties:
            return ''
        if kind not in ('int', 'long', 'string', 'bytes', 'double') and \
                properties.get(prop, '').startswith('TL') is False:
            return ''                           # объект, которого у нас нет
        condition = bit
        if supported_bits is not None:
            supported_bits.add(bit)

    prop = name if name in properties else ALIASES.get(name, name)
    known = prop in properties

    if condition is not None:
        inner = write_plain(kind, prop, known)
        if inner is None:
            if supported_bits is not None:
                supported_bits.discard(condition)
            return ''
        return ('    if (self.flags & (1 << %d)) {\n    %s    }\n'
                % (condition, inner.replace('\n', '\n    ', inner.count('\n') - 1)))

    return write_plain(kind, prop, known)


def write_plain(kind, prop, known):
    if kind == 'int':
        return '    [os writeInt32:%s];\n' % ('(int32_t)self.%s' % prop if known else '0')
    if kind == 'long':
        return '    [os writeInt64:%s];\n' % ('(int64_t)self.%s' % prop if known else '0')
    if kind == 'double':
        return '    [os writeDouble:%s];\n' % ('self.%s' % prop if known else '0')
    if kind == 'string':
        return ('    [os writeString:%s];\n'
                % ('self.%s == nil ? @"" : self.%s' % (prop, prop) if known else '@""'))
    if kind == 'bytes':
        return ('    [os writeBytes:%s];\n'
                % ('self.%s == nil ? [NSData data] : self.%s' % (prop, prop) if known else '[NSData data]'))
    if kind == 'Bool':
        return ('    [os writeInt32:%s ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];\n'
                % ('self.%s' % prop if known else 'false'))
    if kind.startswith('Vector<'):
        if not known:
            return ('    [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];\n'
                    '    [os writeInt32:0];\n')
        return ('    [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];\n'
                '    [os writeInt32:(int32_t)self.%s.count];\n'
                '    for (id item in self.%s) {\n'
                '        TLMetaClassStore::serializeObject(os, item, true);\n'
                '    }\n' % (prop, prop))
    if not known:
        return None
    return '    TLMetaClassStore::serializeObject(os, self.%s, true);\n' % prop


def main(dry):
    os.chdir(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
    scheme = parse_scheme()

    updated, skipped = [], []
    for path in glob.glob('legacy/TL/TL/TL*.mm') + glob.glob('Telegraph/TL*.mm'):
        if os.path.basename(path).startswith('TLRPC'):
            continue
        text = open(path, errors='replace').read()
        original = text
        header = path[:-3] + '.h'
        header_text = open(header, errors='replace').read() if os.path.exists(header) else ''

        for match in list(re.finditer(
                r'@implementation ([A-Za-z0-9_$]+)(.*?)(?=@implementation|\Z)', text, re.S)):
            class_name, body = match.group(1), match.group(2)
            if '$' not in class_name:
                continue
            constructor = class_name.split('$')[1]
            # часть классов 2018 года называется inputMediaPhotoMeta и т.п.
            if constructor.endswith('Meta') and constructor[:-4] in scheme:
                constructor = constructor[:-4]
            if not (constructor.startswith('input') or 'Input' in class_name):
                continue
            if constructor not in scheme:
                continue

            sig_match = re.search(
                r'TLconstructorSignature[^{]*\{\s*(?://[^\n]*\n\s*)?return \(?int32_t\)?\s*\(?(0x[0-9a-fA-F]+)',
                body)
            if not sig_match:
                continue
            if int(sig_match.group(1), 16) == scheme[constructor][0]:
                continue

            properties = legacy_properties(class_name, header_text)
            fields = scheme[constructor][1].split()
            supported_bits = set()
            lines = []
            failed = False
            for field in fields:
                line = write_field(field, properties, supported_bits)
                if line is None and field.endswith(':#'):
                    lines.append(None)          # место под флаги
                    continue
                if line is None:
                    failed = True
                    break
                lines.append(line)
            if failed:
                skipped.append(class_name)
                continue

            if 'flags' in properties:
                mask = 0
                for bit in supported_bits:
                    mask |= (1 << bit)
                flags_line = ('    [os writeInt32:(int32_t)(self.flags & 0x%08x);]\n' % mask)
                flags_line = '    [os writeInt32:(int32_t)(self.flags & 0x%08x)];\n' % mask
            else:
                flags_line = '    [os writeInt32:0];\n'
            lines = [flags_line if line is None else line for line in lines]

            new_body = re.sub(
                r'(TLconstructorSignature[^{]*\{\s*(?://[^\n]*\n\s*)?return )\(?int32_t\)?\s*\(?0x[0-9a-fA-F]+\)?;',
                r'\g<1>(int32_t)0x%08x;' % scheme[constructor][0], body, count=1)
            new_body = re.sub(
                r'(- \(int32_t\)TLconstructorName\s*\n\{\s*\n\s*return )[^;]+;',
                r'\g<1>-1;', new_body, count=1)
            new_body = re.sub(
                r'\n- \(void\)TLserialize:\(NSOutputStream \*\)\w*os\n\{.*?\n\}\n', '\n',
                new_body, count=1, flags=re.S)

            serialize = ('\n// layer 228\n- (void)TLserialize:(NSOutputStream *)os\n{\n'
                         + ''.join(lines) + '}\n')
            new_body = new_body.rstrip()
            if new_body.endswith('@end'):
                new_body = new_body[:-len('@end')].rstrip() + '\n' + serialize + '\n@end\n\n'
            else:
                new_body = new_body + '\n' + serialize

            text = text.replace(match.group(0), '@implementation ' + class_name + new_body, 1)
            updated.append(class_name)

        if text != original and not dry:
            if '#import "TLMetaClassStore.h"' not in text:
                first = text.index('\n')
                text = text[:first + 1] + '\n#import "TLMetaClassStore.h"\n' + text[first + 1:]
            open(path, 'w').write(text)

    print('переведено типов: %d — %s' % (len(updated), ', '.join(updated)))
    if skipped:
        print('пропущено: %s' % ', '.join(skipped))
    return 0


if __name__ == '__main__':
    sys.exit(main('--dry' in sys.argv))
