source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/DevL0rd/SkyNX/releases/download/v1.4/SkyNXStreamer-win32-ia32.zip
PKG_DIR=$ROOT_BUILD_PATH/skynx_client
PKG_OUT_DIR=$ROOT_BUILD_PATH/skynx_client/out
PKG_FILE_PATH=$PKG_DIR/skynx_client.zip
PKG_FILE_HASH=0156800ac028b5028d826ad2979252dd

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_mkdir $ROOT_DIST_PATH/app

cp -r $PKG_FILE_PATH $ROOT_DIST_PATH/app/
