#!/usr/bin/env python3
"""Переводит запросы приложения на схему 228.

96 из 190 методов, которые шлёт клиент 2018 года, сервер уже не принимает:
сменились и идентификаторы конструкторов, и раскладка аргументов (например
upload.getFile получил флаги и 64-битный offset, messages.getHistory —
64-битный hash). Скрипт читает сериализацию из актуального клиента Telegram
(только на чтение) и переписывает TLserialize у соответствующих классов.

Необязательные поля (за флагом) не отправляем: у старых классов биты флагов
означают другое, поэтому пишем flags = 0 и пропускаем такие аргументы —
базовое поведение метода сохраняется.

    python3 tools/modernize_requests.py [--dry]
"""
import glob
import os
import re
import sys

SOURCES = os.path.expanduser('~/swiftgram/submodules/TelegramApi/Sources')

FUNC_RE = re.compile(
    r'^\s*(?:public )?static func (\w+)\((.*?)\) -> \(FunctionDescription, Buffer, '
    r'DeserializeFunctionResponse<(.+?)>\)')
FLAG_IF_RE = re.compile(r'^\s*if Int\((\w+)\) & Int\(1 << (\d+)\) != 0 \{')
SER_RE = re.compile(r'^\s*serialize(Int32|Int64|Double|String|Bytes)\((\w+)!?, buffer: buffer')
OBJ_RE = re.compile(r'^\s*(\w+)!?\.serialize\(buffer, true\)')
VECTOR_HEAD_RE = re.compile(r'^\s*buffer\.appendInt32\(481674261\)')
VECTOR_COUNT_RE = re.compile(r'^\s*buffer\.appendInt32\(Int32\((\w+)!?\.count\)\)')
VECTOR_ITEM_RE = re.compile(r'^\s*item\.serialize\(buffer, true\)')


def snake(name):
    return re.sub(r'(?<!^)(?=[A-Z])', '_', name).lower()


class Op:
    def __init__(self, kind, name, optional=False):
        self.kind = kind          # int32 / int64 / double / string / bytes / object / vector
        self.name = name          # имя аргумента в swift
        self.optional = optional


def parse_methods():
    methods = {}
    for path in sorted(glob.glob(os.path.join(SOURCES, 'Api*.swift'))):
        lines = open(path).read().split('\n')
        for i, line in enumerate(lines):
            m = FUNC_RE.match(line)
            if not m:
                continue
            name = m.group(1)
            signature = None
            ops = []
            optional_depth = 0
            j = i + 1
            while j < len(lines):
                current = lines[j]
                if current.strip().startswith('return (FunctionDescription'):
                    full = re.search(r'FunctionDescription\(name: "([\w.]+)"', current)
                    if full:
                        name = full.group(1)
                    break
                if signature is None:
                    sig = re.search(r'buffer\.appendInt32\((-?\d+)\)', current)
                    if sig:
                        signature = int(sig.group(1)) & 0xFFFFFFFF
                        j += 1
                        continue

                if FLAG_IF_RE.match(current):
                    optional_depth += 1
                    j += 1
                    continue
                if optional_depth > 0 and current.strip() == '}':
                    optional_depth -= 1
                    j += 1
                    continue

                optional = optional_depth > 0

                if VECTOR_HEAD_RE.match(current):
                    count = VECTOR_COUNT_RE.match(lines[j + 1]) if j + 1 < len(lines) else None
                    if count:
                        ops.append(Op('vector', count.group(1), optional))
                        # пропускаем тело цикла
                        while j < len(lines) and not lines[j].strip() == '}':
                            j += 1
                    j += 1
                    continue

                s = SER_RE.match(current)
                if s:
                    kind = {'Int32': 'int32', 'Int64': 'int64', 'Double': 'double',
                            'String': 'string', 'Bytes': 'bytes'}[s.group(1)]
                    ops.append(Op(kind, s.group(2), optional))
                    j += 1
                    continue

                o = OBJ_RE.match(current)
                if o:
                    ops.append(Op('object', o.group(1), optional))
                    j += 1
                    continue

                j += 1

            if signature is not None:
                methods.setdefault(name, []).append((signature, ops))
    return methods


def legacy_properties(class_name):
    """Свойства старого класса запроса, включая унаследованные."""
    properties = {}
    for path in glob.glob('legacy/TL/TL/*.h') + glob.glob('Telegraph/*.h'):
        text = open(path, errors='replace').read()
        if class_name.split('$')[0] not in text:
            continue
        for match in re.finditer(
                r'@interface\s+([A-Za-z0-9_$]+)\s*:\s*([A-Za-z0-9_$]+)(.*?)@end', text, re.S):
            name, _, body = match.groups()
            if name not in (class_name, class_name.split('$')[0]):
                continue
            for prop in re.finditer(
                    r'@property\s*\([^)]*\)\s*([A-Za-z0-9_<>* ]+?)\s*\*?\s*(\w+);', body):
                properties[prop.group(2)] = prop.group(1).strip()
    return properties


PROPERTY_ALIASES = {'id': 'n_id', 'hash': 'n_hash', 'self': 'n_self'}


def objc_write(op, properties):
    """Строка сериализации одного аргумента."""
    name = snake(op.name)
    if name not in properties and name in PROPERTY_ALIASES:
        name = PROPERTY_ALIASES[name]
    known = name in properties

    if op.kind == 'int32':
        if name == 'flags':
            return '    [os writeInt32:0];\n'
        return '    [os writeInt32:%s];\n' % ('(int32_t)self.%s' % name if known else '0')
    if op.kind == 'int64':
        return '    [os writeInt64:%s];\n' % ('(int64_t)self.%s' % name if known else '0')
    if op.kind == 'double':
        return '    [os writeDouble:%s];\n' % ('self.%s' % name if known else '0')
    if op.kind == 'string':
        return '    [os writeString:%s];\n' % ('self.%s == nil ? @"" : self.%s' % (name, name) if known else '@""')
    if op.kind == 'bytes':
        return '    [os writeBytes:%s];\n' % ('self.%s == nil ? [NSData data] : self.%s' % (name, name) if known else '[NSData data]')
    if op.kind == 'object':
        if not known:
            return None
        if properties.get(name) == 'bool':
            # Api.Bool сериализуется как объект, а в старом классе это примитив
            return ('    [os writeInt32:self.%s ? TL_BOOL_TRUE_CONSTRUCTOR : '
                    'TL_BOOL_FALSE_CONSTRUCTOR];\n' % name)
        return '    TLMetaClassStore::serializeObject(os, self.%s, true);\n' % name
    if op.kind == 'vector':
        if not known:
            return ('    [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];\n'
                    '    [os writeInt32:0];\n')
        return ('    [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];\n'
                '    [os writeInt32:(int32_t)self.%s.count];\n'
                '    for (id item in self.%s) {\n'
                '        TLMetaClassStore::serializeObject(os, item, true);\n'
                '    }\n' % (name, name))
    return None


def main(dry):
    os.chdir(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
    methods = parse_methods()

    updated, skipped = [], []
    for path in glob.glob('legacy/TL/TL/TLRPC*.mm') + glob.glob('Telegraph/TLRPC*.mm'):
        text = open(path, errors='replace').read()
        original = text

        for match in list(re.finditer(
                r'@implementation ([A-Za-z0-9_$]+)(.*?)(?=@implementation|\Z)', text, re.S)):
            class_name, body = match.group(1), match.group(2)
            if '$' not in class_name or not class_name.startswith('TLRPC'):
                continue
            sig_match = re.search(
                r'TLconstructorSignature[^{]*\{\s*(?://[^\n]*\n\s*)?return \(?int32_t\)?\s*\(?(0x[0-9a-fA-F]+)',
                body)
            if not sig_match:
                continue
            current = int(sig_match.group(1), 16)

            # TLRPCmessages_getHistory$messages_getHistory -> messages.getHistory
            constructor = class_name.split('$')[1]
            parts = constructor.split('_', 1)
            full_name = '%s.%s' % (parts[0], parts[1]) if len(parts) == 2 else constructor
            if full_name not in methods:
                continue
            variants = methods[full_name]
            if any(current == signature for signature, _ in variants):
                continue

            signature, ops = variants[0]
            properties = legacy_properties(class_name)

            lines = []
            failed = False
            for op in ops:
                if op.optional:
                    continue           # флаги пишем нулевые — необязательное пропускаем
                line = objc_write(op, properties)
                if line is None:
                    failed = True
                    break
                lines.append(line)
            if failed:
                skipped.append(class_name)
                continue

            new_body = body
            new_body = re.sub(
                r'(TLconstructorSignature[^{]*\{\s*(?://[^\n]*\n\s*)?return )\(?int32_t\)?\s*\(?0x[0-9a-fA-F]+\)?;',
                r'\g<1>(int32_t)0x%08x;' % signature, new_body, count=1)
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

    print('переведено методов: %d' % len(updated))
    if skipped:
        print('пропущено (нет подходящего поля): %d — %s' % (len(skipped), ', '.join(skipped[:10])))
    return 0


if __name__ == '__main__':
    sys.exit(main('--dry' in sys.argv))
