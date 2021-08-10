source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/HamletDuFromage/aio-switch-updater/releases/download/2.11.5/aio-switch-updater.zip
PKG_DIR=$ROOT_BUILD_PATH/aio-switch-updater
PKG_OUT_DIR=$ROOT_BUILD_PATH/aio-switch-updater/out
PKG_FILE_PATH=$PKG_DIR/aio-switch-updater.zip
PKG_FILE_HASH=8208398792eec5adb285a5d19a7edccf

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
