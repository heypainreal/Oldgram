// Ключи приложения Telegram. Получить свои: https://my.telegram.org/apps
//
// Файл читается как "../../config.h" из каталога Telegraph, то есть лежать он
// должен РЯДОМ с папкой репозитория, а не внутри неё:
//
//     cp config.example.h ../config.h
//     # затем вписать свои значения
//
// Своя пара api_id/api_hash обязательна: чужие ключи сервер отклоняет, а делиться
// ими запрещают условия Telegram.

#define SETUP_API_ID(apiId) apiId = 0;
#define SETUP_API_HASH(apiHash) apiHash = @"";
