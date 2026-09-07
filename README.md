<div align="center">

<img src="docs/icon.png" width="128" alt="Oldgram">

# Oldgram

**Telegram для iOS образца 2018 года, который снова работает.**

Клиент 4.9.1 переведён со схемы API layer 86 на layer 228 — тот же интерфейс,
что и семь лет назад, но с сегодняшними серверами.

<a href="LICENSE"><img src="https://img.shields.io/badge/license-GPL--2.0--or--later-blue" alt="GPL-2.0-or-later"></a>
<img src="https://img.shields.io/badge/iOS-12.0%2B-lightgrey" alt="iOS 12.0+">
<img src="https://img.shields.io/badge/язык-Objective--C-438eff" alt="Objective-C">

</div>

---

## Что это

Оригинальный [Telegram-iOS 4.9.1](https://github.com/peter-iakovlev/Telegram)
давно не запускается: сервер не принимает его запросы. Здесь переписан сетевой
слой — разбор современной схемы сгенерирован заново, а к старым классам
приложения проложен мост, так что код 2018 года работает с ним без переделки.

Интерфейс не тронут: тот самый список чатов, те самые анимации.

## Возможности

- переписка, медиа, ответы, пересылки, редактирование;
- группы, супергруппы и каналы;
- стикеры: `webp` и анимированные `.tgs` (рисуются через Lottie);
- голосовые звонки поверх libtgvoip.

**Видеозвонков нет.** Они требуют tgcalls поверх WebRTC — этого стека в проекте
нет, и в одну сборку он не добавляется. Входящий видеозвонок соединится как
голосовой.

## Сборка

### Что нужно

- macOS с Xcode (собиралось на Xcode 26, iOS SDK 26);
- свои `api_id` и `api_hash` — чужие ключи сервер отклоняет.

### 1. Забрать исходники

```bash
git clone https://github.com/heypainreal/Oldgram.git
cd Oldgram
```

Подмодулей нет — все зависимости (MtProtoKit, SSignalKit, LegacyComponents,
libtgvoip, Lottie) лежат прямо в репозитории вместе с правками под layer 228.

### 2. Положить ключи

Получите пару на [my.telegram.org/apps](https://my.telegram.org/apps).

`config.h` должен лежать **рядом с папкой репозитория**, а не внутри неё — код
подключает его как `../../config.h`:

```bash
cp config.example.h ../config.h
```

Впишите в него свои значения:

```objc
#define SETUP_API_ID(apiId) apiId = 1234567;
#define SETUP_API_HASH(apiHash) apiHash = @"ваш_api_hash";
```

### 3. Собрать

```bash
./wait_and_package.sh                # с нуля
./wait_and_package.sh --incremental  # быстрая пересборка
```

Скрипт по очереди собирает SSignalKit, MtProtoKit, LegacyDatabase, Lottie,
libtgvoip, LegacyComponents и само приложение, после чего складывает
`build/Telegraph.ipa`.

### 4. Поставить на телефон

Сборка **не подписана** — подпишите своим сертификатом любым привычным
способом: Sideloadly, AltStore, TrollStore, `codesign` вручную.

Имя приложения и bundle id задаются в `Config.xcconfig` / `Fork.xcconfig` /
`AppStore.xcconfig` — поменяйте под себя, если ставите рядом с настоящим
Telegram.

### Если не собирается

| Симптом | Причина |
|---|---|
| `'config.h' file not found` | `config.h` внутри репозитория, а нужен на уровень выше |
| `assert(apiId != 0)` при запуске | в `config.h` остались нули из шаблона |
| Ошибка про циклическую зависимость | собирайте скриптом, а не кнопкой в Xcode: он передаёт `-parallelizeTargets` |

## Подпись и разрешения

Часть системных API валит приложение, если подписать сборку без нужного
разрешения. `-[INPreferences requestSiriAuthorization:]` без
`com.apple.developer.siri` бросает исключение изнутри `dispatch_once`, и
перехватить его нельзя: libdispatch зовёт `std::terminate()` раньше любого
`@catch`.

Поэтому приложение само читает `embedded.mobileprovision` и не трогает то, на
что разрешения нет. Сборка работает и с подписью свободным Apple ID.

## Лицензия

GNU GPL v2 или новее — как у исходного Telegram-iOS. Полный текст в
[`LICENSE`](LICENSE).

Проект не связан с Telegram Messenger LLP.
