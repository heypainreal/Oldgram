#!/bin/bash
# Сборка Telegram 4.9.1 (Telegraph) и упаковка в .ipa.
#
#   -parallelizeTargets                  — иначе Xcode 26 видит ложный цикл
#                                          LegacyDatabase → SiriIntents → Share
#   GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS  — код 2018 года против SDK iOS 26 даёт
#                                          тысячи депрекейшенов; настоящие
#                                          поломки всё равно приходят ошибками
set -e
set -o pipefail

export SYMROOT="$(PWD)/build"
export BUILT_PRODUCTS_DIR="$(PWD)/build/Release AppStore-iphoneos"

COMMON=(
  -parallelizeTargets
  SYMROOT="${SYMROOT}"
  BUILT_PRODUCTS_DIR="${BUILT_PRODUCTS_DIR}"
  -sdk iphoneos
  ARCHS=arm64
  CODE_SIGN_IDENTITY=""
  CODE_SIGNING_REQUIRED=NO
  CODE_SIGNING_ALLOWED=NO
  GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS=NO
  CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS=NO
  # Код 2018 года свободно присваивает блоки с ковариантными параметрами;
  # современный clang считает это ошибкой. ABI при этом тот же, поэтому
  # возвращаем прежнее поведение — предупреждение.
  OTHER_CFLAGS="\$(inherited) -Wno-error=incompatible-pointer-types -Wno-error=incompatible-function-pointer-types -Wno-error=incompatible-block-pointer-types -Wno-error=incompatible-pointer-types-discards-qualifiers"
)

if [ "$1" != "--incremental" ]; then
  rm -rf build/
fi

echo "Building SSignalKit..."
xcodebuild "${COMMON[@]}" -configuration "Release AppStore" -project thirdparty/SSignalKit/SSignalKit.xcodeproj -target SSignalKit build

echo "Building MtProtoKitDynamic..."
xcodebuild "${COMMON[@]}" -configuration "Release" -project submodules/MtProtoKit/MtProtoKit.xcodeproj -target MtProtoKitDynamic build

echo "Building LegacyDatabase..."
xcodebuild "${COMMON[@]}" -configuration "Release AppStore" -project Telegraph.xcodeproj -target LegacyDatabase build

echo "Building Lottie..."
xcodebuild "${COMMON[@]}" -configuration "Release AppStore" -project thirdparty/Lottie/Lottie.xcodeproj -target LottieLibraryIOS build

echo "Building libtgvoip..."
xcodebuild "${COMMON[@]}" -configuration "Release AppStore" -project submodules/libtgvoip/libtgvoip.xcodeproj -target libtgvoip build

echo "Building LegacyComponents..."
xcodebuild "${COMMON[@]}" -configuration "Release AppStore" -project submodules/LegacyComponents/LegacyComponents.xcodeproj -target LegacyComponents build

echo "Building Telegraph..."
xcodebuild "${COMMON[@]}" -configuration "Release AppStore" -project Telegraph.xcodeproj -target Telegraph build

echo "Packaging IPA..."
# Имя бандла задаётся TELEGRAM_APP_NAME из Config.xcconfig (Telegram.app),
# а не именем таргета.
APP="$(ls -d "${BUILT_PRODUCTS_DIR}"/*.app | head -1)"
[ -x "${APP}/$(basename "${APP}" .app)" ] || { echo "нет исполняемого файла в ${APP} — сборка не дошла до линковки"; exit 1; }
rm -rf build/Payload build/Telegraph.ipa
mkdir -p build/Payload
cp -R "${APP}" build/Payload/
cd build
zip -qry Telegraph.ipa Payload
echo "Done: $(PWD)/Telegraph.ipa"
