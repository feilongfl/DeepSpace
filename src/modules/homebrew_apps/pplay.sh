source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/Cpasjuste/pplay/releases/download/v3.5/pplay-3.5_switch.zip
PKG_DIR=$ROOT_BUILD_PATH/pplay
PKG_OUT_DIR=$ROOT_BUILD_PATH/pplay/out
PKG_FILE_PATH=$PKG_DIR/pplay.zip
PKG_FILE_HASH=8388959efeccbc3ab4f1eb2afbbf9a7c

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/pplay $ROOT_DIST_PATH/switch
