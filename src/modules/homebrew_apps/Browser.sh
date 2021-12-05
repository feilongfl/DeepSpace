source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/crc-32/BrowseNX/releases/download/v0.4.1/BrowseNX.zip
PKG_DIR=$ROOT_BUILD_PATH/BrowseNX
PKG_OUT_DIR=$ROOT_BUILD_PATH/BrowseNX/out
PKG_FILE_PATH=$PKG_DIR/BrowseNX.zip
PKG_FILE_HASH=33131e3c91c0c1342089d4fd0c02d58c

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

fs_mkdir $ROOT_DIST_PATH/app

cp -r $PKG_OUT_DIR/switch/Browser.nro $ROOT_DIST_PATH/switch/Browser.nro
cp -r $PKG_OUT_DIR/Browser.nsp $ROOT_DIST_PATH/app/Browser.nsp
