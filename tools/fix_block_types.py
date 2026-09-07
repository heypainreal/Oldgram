#!/usr/bin/env python3
"""Чинит ошибки "incompatible block pointer types assigning" из лога сборки.

Код 2018 года присваивает блок, у которого параметр объявлен более узким типом,
чем в типе свойства. Раньше clang это разрешал, теперь — ошибка. Семантика на
уровне ABI не меняется, поэтому приводим блок к типу самой цели присваивания:

    view.captionSet = ^(id<Narrow> item) { ... };
    view.captionSet = (typeof(view.captionSet))^(id<Narrow> item) { ... };

Запуск: python3 tools/fix_block_types.py <build.log>
"""
import os
import re
import sys

ERR = re.compile(
    r'^(?P<file>.+?):(?P<line>\d+):(?P<col>\d+): error: incompatible block '
    r'pointer types assigning to ')


def main(log_path):
    root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    os.chdir(root)

    targets = {}
    for raw in open(log_path, encoding='utf-8', errors='replace'):
        m = ERR.match(raw.strip())
        if not m:
            continue
        targets.setdefault(m.group('file'), set()).add(int(m.group('line')))

    if not targets:
        print('ошибок этого класса в логе нет')
        return 0

    fixed = 0
    for path, line_numbers in targets.items():
        if not os.path.exists(path):
            continue
        lines = open(path, encoding='utf-8').read().split('\n')
        for n in sorted(line_numbers):
            text = lines[n - 1]
            if '(typeof(' in text or '= ^' not in text:
                continue
            lhs, _, rhs = text.partition('= ^')
            target = lhs.strip()
            lines[n - 1] = '%s= (typeof(%s))^%s' % (lhs, target, rhs)
            fixed += 1
        open(path, 'w', encoding='utf-8').write('\n'.join(lines))
        print('%s: %d' % (path, len(line_numbers)))

    print('исправлено присваиваний: %d' % fixed)
    return 0


if __name__ == '__main__':
    sys.exit(main(sys.argv[1]))
