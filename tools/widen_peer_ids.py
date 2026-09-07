#!/usr/bin/env python3
"""Переводит идентификаторы пиров на 64 бита по всему приложению.

Клиент 2018 года считал, что идентификаторы пользователей, чатов и каналов
помещаются в int32. В схеме 228 это давно не так, и любое 32-битное звено
портит идентификатор: чат открывается чужой, запрос уходит с обрезанным id.

Правим объявления по имени переменной — параметры методов, локальные
переменные и свойства.

    python3 tools/widen_peer_ids.py [--dry]
"""
import glob
import os
import re
import sys

NAMES = (r'(uid|userId|peerId|chatId|channelId|fromUid|toUid|participantUid|'
         r'adminUid|inviterUid|invitedBy|botId|authorId|senderId|ownerUid|'
         r'targetUid|conversationId|clientUserId|myUserId|selfUid)')

PARAM = re.compile(r':\((?:int32_t|int)\)\s*' + NAMES + r'\b')
LOCAL = re.compile(r'\b(?:int32_t|int)(\s+)' + NAMES + r'\b(\s*[=;,)])')
PROP = re.compile(r'(@property\s*\([^)]*\)\s*)(?:int32_t|int)(\s+)' + NAMES + r'(\s*;)')

ROOTS = ['Telegraph', 'legacy', 'LegacyDatabase', 'submodules/LegacyComponents',
         'Share', 'Widget', 'SiriIntents']


def main(dry):
    os.chdir(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

    files = []
    for root in ROOTS:
        for ext in ('*.m', '*.mm', '*.h'):
            files += glob.glob(os.path.join(root, '**', ext), recursive=True)

    changed = 0
    total = 0
    for path in sorted(set(files)):
        if '/build/' in path:
            continue
        try:
            text = open(path, encoding='utf-8', errors='replace').read()
        except OSError:
            continue
        original = text

        text, a = PARAM.subn(r':(int64_t)\1', text)
        text, b = LOCAL.subn(r'int64_t\1\2\3', text)
        text, c = PROP.subn(r'\1int64_t\2\3\4', text)

        if text != original:
            total += a + b + c
            changed += 1
            if not dry:
                open(path, 'w', encoding='utf-8').write(text)

    print('файлов изменено: %d, объявлений расширено: %d' % (changed, total))
    return 0


if __name__ == '__main__':
    sys.exit(main('--dry' in sys.argv))
