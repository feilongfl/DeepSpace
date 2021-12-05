source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/CTCaer/hekate/releases/download/v5.6.5/hekate_ctcaer_5.6.5_Nyx_1.1.1.zip
PKG_DIR=$ROOT_BUILD_PATH/hakate
PKG_OUT_DIR=$ROOT_BUILD_PATH/hakate/out
PKG_FILE_PATH=$PKG_DIR/hekate_ctcaer_5.6.5_Nyx_1.1.1.zip
PKG_FILE_HASH=9ab87fcbfba8bf7084b0a43843978896

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH

DIST_HEKATE_BIN_FILE_PATH=$ROOT_DIST_PATH/hekate_ctcaer_5.6.5.bin
mv $DIST_HEKATE_BIN_FILE_PATH $ROOT_DIST_PATH/payload.bin
cp $ROOT_DIST_PATH/payload.bin $ROOT_DIST_PATH/bootloader/update.bin

cp -r src/modules/bootloader/hekate/* $ROOT_DIST_PATH/bootloader/
cp -r src/modules/bootloader/sx_gear/* $ROOT_DIST_PATH
