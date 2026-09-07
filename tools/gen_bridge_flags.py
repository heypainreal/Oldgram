#!/usr/bin/env python3
"""Генерирует таблицу булевых флагов для ModernBridge.

В схеме 228 поля вида creator:flags.0?true не занимают места на проводе и не
попадают в сгенерированные классы — есть только сама маска flags. У старых
классов это отдельные bool-свойства, и мост оставлял их выключенными: канал
переставал отличаться от супергруппы, голосовое — от обычного файла.
"""
import glob, re, os
ROOT = '/Users/heypain/old telegram'
os.chdir(ROOT)

# конструктор -> [(имя флага, имя маски, бит)]
ctor_flags = {}
for line in open('modern_scheme.tl', errors='replace'):
    line = line.strip()
    m = re.match(r'^([A-Za-z0-9_.]+)#([0-9a-fA-F]+)\s*(.*?)\s*=\s*[A-Za-z0-9_.<>]+;$', line)
    if not m:
        continue
    name = m.group(1)
    entries = []
    for token in m.group(3).split():
        f = re.match(r'^(\w+):(flags2?)\.(\d+)\?true$', token)
        if f:
            entries.append((f.group(1), f.group(2), int(f.group(3))))
    if entries:
        for key in {name.split('.')[-1], name.replace('.', '_')}:
            ctor_flags.setdefault(key, entries)

# bool-свойства старых классов (с наследованием)
props, parents = {}, {}
for path in glob.glob('legacy/TL/TL/*.h') + glob.glob('Telegraph/*.h'):
    text = open(path, errors='replace').read()
    for m in re.finditer(r'@interface\s+([A-Za-z0-9_$]+)\s*:\s*([A-Za-z0-9_$]+)[^\n]*\n(.*?)@end', text, re.S):
        name, parent, body = m.group(1), m.group(2), m.group(3)
        props.setdefault(name, set()).update(
            re.findall(r'@property\s*\([^)]*\)\s*(?:bool|BOOL)\s+(\w+);', body))
        parents[name] = parent
for _ in range(5):
    for name in list(props):
        p = parents.get(name)
        if p in props:
            props[name] |= props[p]

def variants(prop):
    """Варианты написания свойства в схеме."""
    out = {prop, re.sub(r'(?<!^)(?=[A-Z])', '_', prop).lower()}
    if prop.startswith('is') and len(prop) > 2 and prop[2].isupper():
        base = prop[2].lower() + prop[3:]
        out |= {base, re.sub(r'(?<!^)(?=[A-Z])', '_', base).lower()}
    if prop.startswith('is_'):
        out.add(prop[3:])
    if prop == 'isSupergroup':
        out.add('megagroup')
    if prop == 'canViewParticipants':
        out.add('can_view_participants')
    return out

rows = []
for ctor, entries in sorted(ctor_flags.items()):
    target = None
    for cls in props:
        if cls.endswith('$' + ctor) or cls.endswith('$modern' + ctor[0].upper() + ctor[1:]):
            target = cls
            break
    if target is None:
        continue
    pairs = []
    for prop in sorted(props[target]):
        names = variants(prop)
        for flag, mask, bit in entries:
            if flag in names:
                pairs.append((prop, mask, bit))
                break
    if pairs:
        rows.append((ctor, pairs))

lines = []
for ctor, pairs in rows:
    items = ', '.join('@"%s": @[@"%s", @(%d)]' % (p, m, b) for p, m, b in pairs)
    lines.append('        @"%s": @{%s},' % (ctor, items))

print('// Сгенерировано tools/gen_bridge_flags.py по modern_scheme.tl')
print('\n'.join(lines))
import sys
print('\n// конструкторов: %d, флагов: %d' % (len(rows), sum(len(p) for _, p in rows)), file=sys.stderr)
