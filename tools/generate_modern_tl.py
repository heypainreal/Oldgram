#!/usr/bin/env python3
"""Генератор современного TL-слоя (layer 228) для Telegram 4.9.1.

Читает scheme_228.tl (см. tools/extract_scheme.py) и порождает Objective-C классы ModernTL_<конструктор>,
которые умеют разбирать и сериализовать себя через рантайм legacy/TL
(NSInputStream+TL, TLMetaClassStore::constructObject).

Результат:
    legacy/TL/ModernTL.h          — все @interface
    legacy/TL/ModernTL_<n>.mm     — реализации, разбитые на куски
    legacy/TL/ModernTLRegistry.mm — ModernTLAllParsers(): парсеры для
                                    manualObjectParsers в TLMetaClassStore

Запуск: python3 tools/generate_modern_tl.py
"""
import os
import re
import sys

SCHEME = 'scheme_228.tl'
OUT_DIR = os.path.join('legacy', 'TL')
CHUNKS = 8

# Имена, которые нельзя использовать как свойства: ключевые слова C/C++/ObjC
# и методы NSObject, которые мы бы переопределили с другим типом.
RESERVED = {
    'self', 'static', 'default', 'class', 'description', 'debugDescription',
    'hash', 'new', 'copy', 'mutableCopy', 'init', 'dealloc', 'superclass',
    'zone', 'retain', 'release', 'autorelease', 'retainCount', 'isProxy',
    'classForCoder', 'signed', 'unsigned', 'public', 'private', 'protected',
    'long', 'short', 'int', 'float', 'double', 'union', 'struct', 'auto',
    'register', 'volatile', 'const', 'inline', 'return', 'void', 'char',
    'bool', 'true', 'false', 'nil', 'NULL', 'super', 'switch', 'case', 'if',
    'else', 'for', 'while', 'do', 'break', 'continue', 'goto', 'sizeof',
    'typedef', 'extern', 'enum', 'namespace', 'template', 'operator', 'this',
    'delete', 'try', 'catch', 'throw', 'using', 'virtual', 'friend',
    'mutable', 'explicit', 'export', 'restrict', 'not', 'and', 'or', 'xor',
    'id',
}

VECTOR_CTOR = '0x1cb5c415'


def objc_name(tl_name):
    """auth.sentCode -> ModernTL_auth_sentCode"""
    return 'ModernTL_' + tl_name.replace('.', '_')


# ARC запрещает свойства из семейств методов new/alloc/copy/init/mutableCopy —
# такие имена тоже переименовываем.
METHOD_FAMILIES = ('new', 'alloc', 'copy', 'init', 'mutableCopy')


def field_name(name):
    if name in RESERVED:
        return 'n_' + name
    for family in METHOD_FAMILIES:
        if name == family or name.startswith(family + '_'):
            return 'n_' + name
    return name


class Field:
    def __init__(self, name, type_, flag_group=None, flag_bit=None):
        self.tl_name = name
        self.name = field_name(name)
        self.type = type_
        self.flag_group = flag_group
        self.flag_bit = flag_bit

    @property
    def optional(self):
        return self.flag_group is not None

    @property
    def is_flag_true(self):
        """Поле-признак: занимает только бит во flags, байтов на проводе нет."""
        return self.type == 'true'

    def objc_type(self):
        t = self.type
        if t == 'true':
            return 'bool'
        if t == 'int':
            return 'int32_t'
        if t == 'long':
            return 'int64_t'
        if t == 'double':
            return 'double'
        if t == 'int128':
            return 'NSData *'
        if t == 'int256':
            return 'NSData *'
        if t == 'string':
            return 'NSString *'
        if t == 'bytes':
            return 'NSData *'
        if t == 'Bool':
            return 'bool'
        if t.startswith('Vector<') or t.startswith('vector<'):
            return 'NSArray *'
        return 'id<TLObject>'

    def property_decl(self):
        t = self.objc_type()
        if t in ('NSString *', 'NSData *', 'NSArray *'):
            return '@property (nonatomic, strong) %s%s;' % (t, self.name)
        if t == 'id<TLObject>':
            return '@property (nonatomic, strong) id<TLObject> %s;' % self.name
        return '@property (nonatomic) %s %s;' % (t, self.name)


class Constructor:
    def __init__(self, tl_name, signature, fields, result_type, is_function):
        self.tl_name = tl_name
        self.signature = signature
        self.fields = fields
        self.result_type = result_type
        self.is_function = is_function
        self.objc = objc_name(tl_name)


ARG_RE = re.compile(r'^([a-zA-Z0-9_]+):(?:(flags2?)\.(\d+)\?)?(.+)$')
LINE_RE = re.compile(
    r'^([a-zA-Z0-9_.]+)#([0-9a-fA-F]+)\s*(.*?)\s*=\s*([a-zA-Z0-9_.<>]+);\s*$')


def parse_args(args_str):
    fields = []
    for arg in args_str.split():
        if arg.startswith('{'):          # {X:Type} — обобщения, пропускаем
            continue
        if arg in ('flags:#', 'flags2:#'):
            fields.append(Field(arg.split(':')[0], 'int'))
            continue
        m = ARG_RE.match(arg)
        if not m:
            continue
        name, group, bit, type_ = m.groups()
        type_ = type_.lstrip('%').lstrip('!')
        fields.append(Field(name, type_, group, bit))
    return fields


def parse_scheme(path):
    types, functions = [], []
    in_functions = False
    for line in open(path, encoding='utf-8'):
        line = line.strip()
        if not line or line.startswith('//'):
            continue
        if line.startswith('---functions---'):
            in_functions = True
            continue
        if line.startswith('---types---'):
            in_functions = False
            continue
        m = LINE_RE.match(line)
        if not m:
            continue
        name, sig, args, result = m.groups()
        if name in ('vector', 'boolTrue', 'boolFalse', 'true', 'null'):
            continue
        ctor = Constructor(name, int(sig, 16), parse_args(args), result,
                           in_functions)
        (functions if in_functions else types).append(ctor)
    return types, functions


# --- генерация чтения/записи одного поля -------------------------------------

def read_expr(field, indent):
    """Код, читающий значение поля из потока в obj.<name>."""
    t = field.type
    tgt = 'obj.%s' % field.name
    pad = ' ' * indent
    if t == 'int':
        return '%s%s = [is readInt32];\n' % (pad, tgt)
    if t == 'long':
        return '%s%s = [is readInt64];\n' % (pad, tgt)
    if t == 'double':
        return '%s%s = [is readDouble];\n' % (pad, tgt)
    if t == 'string':
        return '%s%s = [is readString];\n' % (pad, tgt)
    if t == 'bytes':
        return '%s%s = [is readBytes];\n' % (pad, tgt)
    if t == 'int128':
        return '%s%s = [is readData:16];\n' % (pad, tgt)
    if t == 'int256':
        return '%s%s = [is readData:32];\n' % (pad, tgt)
    if t == 'Bool':
        return ('%s%s = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;\n'
                % (pad, tgt))
    if t.lower().startswith('vector<'):
        inner = t[t.index('<') + 1:t.rindex('>')].lstrip('%').lstrip('!')
        return read_vector(tgt, inner, indent)
    # боксированный объект
    return ('%s%s = TLMetaClassStore::constructObject(is, [is readInt32], '
            'environment, nil, error);\n' % (pad, tgt))


def read_vector(tgt, inner, indent):
    pad = ' ' * indent
    out = pad + '{\n'
    out += pad + '    [is readInt32]; // 0x1cb5c415\n'
    out += pad + '    int32_t count = [is readInt32];\n'
    out += (pad + '    NSMutableArray *items = [[NSMutableArray alloc] '
            'initWithCapacity:(NSUInteger)MAX(0, count)];\n')
    out += pad + '    for (int32_t i = 0; i < count; i++) {\n'
    if inner == 'int':
        out += (pad + '        [items addObject:@([is readInt32])];\n')
    elif inner == 'long':
        out += (pad + '        [items addObject:@([is readInt64])];\n')
    elif inner == 'double':
        out += (pad + '        [items addObject:@([is readDouble])];\n')
    elif inner == 'string':
        out += (pad + '        NSString *item = [is readString];\n')
        out += (pad + '        [items addObject:item == nil ? @"" : item];\n')
    elif inner == 'bytes':
        out += (pad + '        NSData *item = [is readBytes];\n')
        out += (pad + '        [items addObject:item == nil ? '
                '[NSData data] : item];\n')
    else:
        out += (pad + '        id item = TLMetaClassStore::constructObject('
                'is, [is readInt32], environment, nil, error);\n')
        out += (pad + '        if (error != NULL && *error != nil) '
                'return nil;\n')
        out += (pad + '        if (item != nil) [items addObject:item];\n')
    out += pad + '    }\n'
    out += pad + '    %s = items;\n' % tgt
    out += pad + '}\n'
    return out


def write_expr(field, indent):
    t = field.type
    src = 'self.%s' % field.name
    pad = ' ' * indent
    if t == 'int':
        return '%s[os writeInt32:%s];\n' % (pad, src)
    if t == 'long':
        return '%s[os writeInt64:%s];\n' % (pad, src)
    if t == 'double':
        return '%s[os writeDouble:%s];\n' % (pad, src)
    if t == 'string':
        return '%s[os writeString:%s == nil ? @"" : %s];\n' % (pad, src, src)
    if t == 'bytes':
        return ('%s[os writeBytes:%s == nil ? [NSData data] : %s];\n'
                % (pad, src, src))
    if t in ('int128', 'int256'):
        return '%s[os writeData:%s];\n' % (pad, src)
    if t == 'Bool':
        return ('%s[os writeInt32:%s ? TL_BOOL_TRUE_CONSTRUCTOR : '
                'TL_BOOL_FALSE_CONSTRUCTOR];\n' % (pad, src))
    if t.lower().startswith('vector<'):
        inner = t[t.index('<') + 1:t.rindex('>')].lstrip('%').lstrip('!')
        return write_vector(src, inner, indent)
    return ('%sTLMetaClassStore::serializeObject(os, %s, true);\n'
            % (pad, src))


def write_vector(src, inner, indent):
    pad = ' ' * indent
    out = pad + '{\n'
    out += pad + '    [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];\n'
    out += pad + '    [os writeInt32:(int32_t)%s.count];\n' % src
    out += pad + '    for (id item in %s) {\n' % src
    if inner == 'int':
        out += pad + '        [os writeInt32:[item intValue]];\n'
    elif inner == 'long':
        out += pad + '        [os writeInt64:[item longLongValue]];\n'
    elif inner == 'double':
        out += pad + '        [os writeDouble:[item doubleValue]];\n'
    elif inner == 'string':
        out += pad + '        [os writeString:item];\n'
    elif inner == 'bytes':
        out += pad + '        [os writeBytes:item];\n'
    else:
        out += (pad + '        TLMetaClassStore::serializeObject(os, item, '
                'true);\n')
    out += pad + '    }\n'
    out += pad + '}\n'
    return out


# --- генерация классов --------------------------------------------------------

def gen_interface(ctor):
    out = '@interface %s : ModernTLObject <TLObject>\n' % ctor.objc
    seen = set()
    for f in ctor.fields:
        if f.name in seen:
            continue
        seen.add(f.name)
        out += f.property_decl() + '\n'
    out += '@end\n\n'
    return out


def gen_implementation(ctor):
    out = '@implementation %s\n' % ctor.objc
    out += ('- (int32_t)TLconstructorSignature { return (int32_t)0x%08x; }\n'
            % ctor.signature)
    out += '- (int32_t)TLconstructorName { return -1; }\n'
    out += ('- (id<TLObject>)TLbuildFromMetaObject:'
            '(std::shared_ptr<TLMetaObject>)__unused metaObject '
            '{ return nil; }\n')
    out += ('- (void)TLfillFieldsWithValues:'
            '(std::map<int32_t, TLConstructedValue> *)__unused values {}\n')

    # --- deserialize
    out += ('- (id<TLObject>)TLdeserialize:(NSInputStream *)is '
            'signature:(int32_t)__unused signature '
            'environment:(id<TLSerializationEnvironment>)__unused environment '
            'context:(TLSerializationContext *)__unused context '
            'error:(__autoreleasing NSError **)error {\n')
    out += '    %s *obj = [[%s alloc] init];\n' % (ctor.objc, ctor.objc)
    for f in ctor.fields:
        if f.is_flag_true:
            out += ('    if (obj.%s & (1 << %s)) { obj.%s = true; }\n'
                    % (f.flag_group, f.flag_bit, f.name))
            continue
        if f.optional:
            out += ('    if (obj.%s & (1 << %s)) {\n'
                    % (f.flag_group, f.flag_bit))
            out += read_expr(f, 8)
            out += '    }\n'
        else:
            out += read_expr(f, 4)
    out += '    return obj;\n}\n'

    # --- serialize
    out += '- (void)TLserialize:(NSOutputStream *)os {\n'
    for f in ctor.fields:
        if f.is_flag_true:
            continue
        if f.optional:
            out += ('    if (self.%s & (1 << %s)) {\n'
                    % (f.flag_group, f.flag_bit))
            out += write_expr(f, 8)
            out += '    }\n'
        else:
            out += write_expr(f, 4)
    out += '}\n'
    out += '@end\n\n'
    return out


HEADER_PROLOGUE = """// Сгенерировано tools/generate_modern_tl.py — не редактировать вручную.
// Схема: scheme_228.tl (восстановлена из клиента Telegram, layer 228)
#import <Foundation/Foundation.h>
#import "TLObject.h"

/// Общий предок сгенерированных типов.
///
/// Код 2018 года местами спрашивает у ответа поля, которых в схеме 228 уже нет
/// (типы ответов у части методов сменились целиком). Раньше это валило
/// приложение через unrecognized selector; теперь такой вызов возвращает пустое
/// значение и попадает в лог — приложением можно пользоваться, а список мест
/// для точечной починки виден.
@interface ModernTLObject : NSObject
@end

"""

IMPL_PROLOGUE = """// Сгенерировано tools/generate_modern_tl.py — не редактировать вручную.
#import "ModernTL.h"
#import <objc/runtime.h>
#import "NSInputStream+TL.h"
#import "NSOutputStream+TL.h"
#import "TLMetaClassStore.h"

"""


def main():
    root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    os.chdir(root)
    types, functions = parse_scheme(SCHEME)
    os.makedirs(OUT_DIR, exist_ok=True)

    # уникализируем по сигнатуре: в схеме бывают повторы
    seen_sig, uniq = set(), []
    for c in types:
        if c.signature in seen_sig:
            continue
        seen_sig.add(c.signature)
        uniq.append(c)

    header = HEADER_PROLOGUE
    for c in uniq:
        header += gen_interface(c)
    header += 'NSArray *ModernTLAllParsers(void);\n'
    with open(os.path.join(OUT_DIR, 'ModernTL.h'), 'w') as f:
        f.write(header)

    per_chunk = (len(uniq) + CHUNKS - 1) // CHUNKS
    for i in range(CHUNKS):
        part = uniq[i * per_chunk:(i + 1) * per_chunk]
        if not part:
            continue
        body = IMPL_PROLOGUE
        for c in part:
            body += gen_implementation(c)
        with open(os.path.join(OUT_DIR, 'ModernTL_%d.mm' % i), 'w') as f:
            f.write(body)

    registry = IMPL_PROLOGUE
    registry += '''@implementation ModernTLObject

- (NSMethodSignature *)methodSignatureForSelector:(SEL)selector
{
    NSMethodSignature *signature = [super methodSignatureForSelector:selector];
    if (signature != nil) {
        return signature;
    }
    
    // Подменяем только геттеры без аргументов: для них "id метод(void)" даёт
    // вызывающему ноль. Подставлять эту сигнатуру методам с аргументами нельзя —
    // вызов разъедется и вернёт мусорный указатель вместо честной ошибки.
    if (strchr(sel_getName(selector), ':') != NULL) {
        return nil;
    }
    
    return [NSMethodSignature signatureWithObjCTypes:"@@:"];
}

- (void)forwardInvocation:(NSInvocation *)invocation
{
    static NSMutableSet *reported = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        reported = [[NSMutableSet alloc] init];
    });
    
    NSString *key = [NSString stringWithFormat:@"%@.%@", NSStringFromClass([self class]), NSStringFromSelector([invocation selector])];
    @synchronized (reported) {
        if (![reported containsObject:key]) {
            [reported addObject:key];
            TGLog(@"[ModernTL] нет поля для %@ — схема 228 отдаёт другой тип", key);
        }
    }
    
    NSUInteger length = [[invocation methodSignature] methodReturnLength];
    if (length > 0) {
        void *zero = calloc(1, length);
        [invocation setReturnValue:zero];
        free(zero);
    }
}

@end

'''
    registry += 'NSArray *ModernTLAllParsers(void) {\n'
    registry += '    return @[\n'
    for c in uniq:
        registry += '        [[%s alloc] init],\n' % c.objc
    registry += '    ];\n}\n'
    with open(os.path.join(OUT_DIR, 'ModernTLRegistry.mm'), 'w') as f:
        f.write(registry)

    print('типов: %d (уникальных %d), функций: %d' %
          (len(types), len(uniq), len(functions)))
    print('файлы: %s/ModernTL.h + %d кусков + реестр' % (OUT_DIR, CHUNKS))


if __name__ == '__main__':
    sys.exit(main())
