source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/HamletDuFromage/aio-switch-updater/releases/download/2.16.2/aio-switch-updater.zip
PKG_DIR=$ROOT_BUILD_PATH/aio-switch-updater
PKG_OUT_DIR=$ROOT_BUILD_PATH/aio-switch-updater/out
PKG_FILE_PATH=$PKG_DIR/aio-switch-updater_2.16.2.zip
PKG_FILE_HASH=2ce0fb6327cd1e887af90b4f3a7f8b0c

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
