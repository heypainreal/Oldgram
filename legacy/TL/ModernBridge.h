#import <Foundation/Foundation.h>
#import "TLObject.h"

/// Мост между схемой layer 228 и моделями Telegram 4.9.1.
///
/// Сгенерированные ModernTL_* разбирают современный формат, но код приложения
/// ждёт свои классы (TLUser$modernUser, TLDialog$dialog, ...). Мост разбирает
/// ответ современным парсером и переносит поля в старый класс с тем же именем
/// конструктора, сопоставляя свойства по именам и типам.
///
/// Возвращает парсеры для регистрации в manualObjectParsers: их нужно
/// применять поверх ModernTLAllParsers().
NSArray *ModernBridgeAllParsers(void);
