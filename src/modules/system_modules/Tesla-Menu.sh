source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/WerWolv/Tesla-Menu/releases/download/v1.1.4/ovlmenu.zip
PKG_DIR=$ROOT_BUILD_PATH/Tesla-Menu
PKG_OUT_DIR=$ROOT_BUILD_PATH/Tesla-Menu/out
PKG_FILE_PATH=$PKG_DIR/ovlmenu.zip
PKG_FILE_HASH=d473204f733cc18374ef0624f751992d

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
