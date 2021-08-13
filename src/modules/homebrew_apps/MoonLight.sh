source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/XITRIX/Moonlight-Switch/releases/download/v0.6/moonlight.nro
PKG_DIR=$ROOT_BUILD_PATH/moonlight
PKG_OUT_DIR=$ROOT_BUILD_PATH/moonlight/out
PKG_FILE_PATH=$PKG_DIR/moonlight.nro
PKG_FILE_HASH=c9b3b727b3182bbdfaf2ce628c7378a5

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

cp -r $PKG_FILE_PATH $ROOT_DIST_PATH/switch/
