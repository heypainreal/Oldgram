#!/usr/bin/env python3
"""Добавляет сгенерированные legacy/TL/ModernTL*.mm в таргет Telegraph.

Идемпотентно: файлы, уже описанные в проекте, пропускаются. Опорной точкой
служит TLMetaClassStore.mm — новые ссылки кладутся рядом с ним (та же группа,
та же фаза Sources).
"""
import hashlib
import os
import re
import sys

PBX = 'Telegraph.xcodeproj/project.pbxproj'
ANCHOR = 'TLMetaClassStore.mm'
PREFIX = 'D0AA00'          # свой диапазон id, чтобы не пересечься с чужими


def make_id(name, kind):
    """Стабильный уникальный id: зависит от имени файла, а не от порядка
    добавления — иначе повторный запуск выдаёт те же id, и Xcode молча
    игнорирует файл как дубликат."""
    digest = hashlib.sha1(('%s:%s' % (name, kind)).encode()).hexdigest()
    return (PREFIX + digest.upper())[:24]


def main():
    root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    os.chdir(root)
    names = sorted(n for n in os.listdir('legacy/TL')
                   if re.match(r'^Modern(TL(_\d+|Registry)|Bridge)\.mm$', n))
    if not names:
        print('нечего добавлять')
        return 1

    s = open(PBX, encoding='utf-8').read()

    anchor_build = re.search(
        r'\t\t([0-9A-F]{24}) /\* %s in Sources \*/ = \{isa = PBXBuildFile; '
        r'fileRef = ([0-9A-F]{24}) /\* %s \*/; \};\n' % (ANCHOR, ANCHOR), s)
    anchor_file = re.search(
        r'\t\t[0-9A-F]{24} /\* %s \*/ = \{isa = PBXFileReference;.*?\};\n'
        % ANCHOR, s)
    if not anchor_build or not anchor_file:
        print('не нашёл опорные записи для %s' % ANCHOR)
        return 1

    build_lines, file_lines, group_lines, source_lines = '', '', '', ''
    seq = 0
    added = []
    for name in names:
        if '/* %s */' % name in s:
            continue
        seq += 1
        file_id = make_id(name, 'file')
        build_id = make_id(name, 'build')
        added.append(name)
        build_lines += ('\t\t%s /* %s in Sources */ = {isa = PBXBuildFile; '
                        'fileRef = %s /* %s */; };\n'
                        % (build_id, name, file_id, name))
        file_lines += ('\t\t%s /* %s */ = {isa = PBXFileReference; '
                       'fileEncoding = 4; lastKnownFileType = '
                       'sourcecode.cpp.objcpp; path = %s; '
                       'sourceTree = "<group>"; };\n' % (file_id, name, name))
        group_lines += '\t\t\t\t%s /* %s */,\n' % (file_id, name)
        source_lines += '\t\t\t\t%s /* %s in Sources */,\n' % (build_id, name)

    if not added:
        print('всё уже добавлено')
        return 0

    # заголовок ModernTL.h — только ссылка в группе, без компиляции
    if '/* ModernTL.h */' not in s:
        seq += 1
        hdr_id = make_id('ModernTL.h', 'file')
        file_lines += ('\t\t%s /* ModernTL.h */ = {isa = PBXFileReference; '
                       'fileEncoding = 4; lastKnownFileType = sourcecode.c.h; '
                       'path = ModernTL.h; sourceTree = "<group>"; };\n'
                       % hdr_id)
        group_lines += '\t\t\t\t%s /* ModernTL.h */,\n' % hdr_id

    s = s.replace(anchor_build.group(0), anchor_build.group(0) + build_lines, 1)
    s = s.replace(anchor_file.group(0), anchor_file.group(0) + file_lines, 1)

    group_ref = '\t\t\t\t%s /* %s */,\n' % (anchor_build.group(2), ANCHOR)
    if group_ref not in s:
        print('не нашёл ссылку на %s в группе' % ANCHOR)
        return 1
    s = s.replace(group_ref, group_ref + group_lines, 1)

    src_ref = '\t\t\t\t%s /* %s in Sources */,\n' % (anchor_build.group(1),
                                                     ANCHOR)
    if src_ref not in s:
        print('не нашёл %s в фазе Sources' % ANCHOR)
        return 1
    s = s.replace(src_ref, src_ref + source_lines, 1)

    open(PBX, 'w', encoding='utf-8').write(s)
    print('добавлено в проект: %s' % ', '.join(added))
    return 0


if __name__ == '__main__':
    sys.exit(main())
