source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/ITotalJustice/patches/releases/download/12.1.0-0.19.5-r2/fusee.zip
PKG_DIR=$ROOT_BUILD_PATH/sigpatches
PKG_OUT_DIR=$ROOT_BUILD_PATH/sigpatches/out
PKG_FILE_PATH=$PKG_DIR/fusee.zip
PKG_FILE_HASH=c7f03eb2ce1678fb73816f0204b885d7

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
