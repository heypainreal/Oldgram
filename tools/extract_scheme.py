#!/usr/bin/env python3
"""Восстанавливает боевую TL-схему (layer 228) из исходников TelegramApi.

Схема, лежавшая в репозитории (modern_scheme.tl), оказалась форком: часть
конструкторов отсутствует, у части другие идентификаторы. Единственный
достоверный источник — сгенерированный разбор в актуальном клиенте Telegram,
поэтому читаем его и восстанавливаем порядок полей на проводе.

    python3 tools/extract_scheme.py [путь к репозиторию Telegram] > scheme_228.tl

Репозиторий используется только на чтение.
"""
import os
import re
import sys

DEFAULT_SOURCES = os.path.expanduser('~/swiftgram/submodules/TelegramApi/Sources')

DICT_RE = re.compile(
    r'^\s*dict\[(-?\d+)\] = \{ return Api\.([A-Za-z0-9_.]+)\.parse_(\w+)\(\$0\) \}')
FUNC_RE = re.compile(r'^\s*public static func parse_(\w+)\(_ reader: BufferReader\)')
RETURN_RE = re.compile(r'^\s*return Api\.([A-Za-z0-9_.]+)\.(\w+)\((.*)\)\s*$')
RETURN_BARE_RE = re.compile(r'^\s*return Api\.([A-Za-z0-9_.]+)\.(\w+)\s*$')
FLAG_IF_RE = re.compile(r'^\s*if Int\(_(\d+) \?\? 0\) & Int\(1 << (\d+)\) != 0 \{')
READ_RE = re.compile(r'^\s*_(\d+) = reader\.(readInt32|readInt64|readDouble)\(\)')
STRING_RE = re.compile(r'^\s*_(\d+) = parse(String|Bytes)\(reader\)')
OBJECT_RE = re.compile(r'^\s*_(\d+) = Api\.parse\(reader, signature: signature\) as\? Api\.([A-Za-z0-9_.]+)')
VECTOR_RE = re.compile(
    r'^\s*_(\d+) = Api\.parseVector\(reader, elementSignature: [^,]+, elementType: '
    r'(?:Api\.)?([A-Za-z0-9_.]+)\.self\)')


def snake(name):
    """userId -> user_id: старая схема и классы 2018 года в snake_case."""
    out = re.sub(r'(?<!^)(?=[A-Z])', '_', name).lower()
    return out


def swift_type_to_tl(swift):
    mapping = {
        'Int32': 'int',
        'Int64': 'long',
        'Double': 'double',
        'String': 'string',
        'Buffer': 'bytes',
    }
    return mapping.get(swift, swift)


class Slot:
    def __init__(self, index, tl_type, flag_slot=None, flag_bit=None):
        self.index = index
        self.tl_type = tl_type
        self.flag_slot = flag_slot
        self.flag_bit = flag_bit


def parse_function(lines, start):
    """Возвращает (слоты по порядку, путь типа, имя конструктора, метки полей)."""
    slots = []
    labels = None
    type_path = None
    ctor = None

    pending_flag = None       # (слот флагов, бит) для текущего if-блока
    depth = 0

    i = start + 1
    while i < len(lines):
        line = lines[i]
        stripped = line.strip()

        if stripped.startswith('public static func ') or stripped == '}' and depth == 0:
            if stripped.startswith('public static func '):
                break

        m = FLAG_IF_RE.match(line)
        if m:
            pending_flag = (int(m.group(1)), int(m.group(2)))
            depth = 1
            i += 1
            continue

        if pending_flag is not None and stripped == '}':
            depth -= 1
            if depth <= 0:
                pending_flag = None
            i += 1
            continue

        flag_slot, flag_bit = pending_flag if pending_flag else (None, None)

        m = READ_RE.match(line)
        if m:
            kind = {'readInt32': 'int', 'readInt64': 'long',
                    'readDouble': 'double'}[m.group(2)]
            slots.append(Slot(int(m.group(1)), kind, flag_slot, flag_bit))
            i += 1
            continue

        m = STRING_RE.match(line)
        if m:
            kind = 'string' if m.group(2) == 'String' else 'bytes'
            slots.append(Slot(int(m.group(1)), kind, flag_slot, flag_bit))
            i += 1
            continue

        m = OBJECT_RE.match(line)
        if m:
            slots.append(Slot(int(m.group(1)), m.group(2), flag_slot, flag_bit))
            i += 1
            continue

        m = VECTOR_RE.match(line)
        if m:
            inner = swift_type_to_tl(m.group(2))
            slots.append(Slot(int(m.group(1)), 'Vector<%s>' % inner,
                              flag_slot, flag_bit))
            i += 1
            continue

        m = RETURN_RE.match(line)
        if m:
            type_path, ctor, args = m.group(1), m.group(2), m.group(3)
            labels = re.findall(r'(\w+): _\d+', args)
            break

        m = RETURN_BARE_RE.match(line)
        if m:
            type_path, ctor, labels = m.group(1), m.group(2), []
            break

        i += 1

    return slots, type_path, ctor, labels


def main(sources):
    ids = {}
    with open(os.path.join(sources, 'Api0.swift')) as f:
        for line in f:
            m = DICT_RE.match(line)
            if m:
                value = int(m.group(1)) & 0xFFFFFFFF
                ids[(m.group(2), m.group(3))] = value

    entries = []
    for name in sorted(os.listdir(sources)):
        if not name.startswith('Api') or not name.endswith('.swift'):
            continue
        lines = open(os.path.join(sources, name)).read().split('\n')
        for index, line in enumerate(lines):
            if not FUNC_RE.match(line):
                continue
            slots, type_path, ctor, labels = parse_function(lines, index)
            if type_path is None:
                continue
            signature = ids.get((type_path, ctor))
            if signature is None:
                continue

            # слоты флагов: на них ссылаются условия
            flag_slots = {s.flag_slot for s in slots if s.flag_slot is not None}

            by_index = {}
            for position, slot in enumerate(slots):
                label = labels[position] if labels and position < len(labels) else 'f%d' % slot.index
                by_index[slot.index] = (label, slot)

            fields = []
            for slot_index in sorted(by_index):
                label, slot = by_index[slot_index]
                field = snake(label)
                if slot_index in flag_slots:
                    fields.append('%s:#' % field)
                elif slot.flag_slot is not None:
                    flag_name = snake(by_index[slot.flag_slot][0]) if slot.flag_slot in by_index else 'flags'
                    fields.append('%s:%s.%d?%s' % (field, flag_name, slot.flag_bit, slot.tl_type))
                else:
                    fields.append('%s:%s' % (field, slot.tl_type))

            namespace = type_path.rsplit('.', 1)[0] if '.' in type_path else None
            tl_name = '%s.%s' % (namespace, ctor) if namespace else ctor
            result = type_path

            entries.append('%s#%08x %s= %s;' % (
                tl_name, signature,
                (' '.join(fields) + ' ') if fields else '', result))

    print('\n'.join(entries))
    print('// конструкторов: %d' % len(entries), file=sys.stderr)


if __name__ == '__main__':
    main(sys.argv[1] if len(sys.argv) > 1 else DEFAULT_SOURCES)
