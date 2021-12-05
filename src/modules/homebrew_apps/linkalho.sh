source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/rdmrocha/linkalho/releases/download/v1.0.6/linkalho-v1.0.6.zip
PKG_DIR=$ROOT_BUILD_PATH/linkalho
PKG_OUT_DIR=$ROOT_BUILD_PATH/linkalho/out
PKG_FILE_PATH=$PKG_DIR/linkalho-v1.0.6.zip
PKG_FILE_HASH=f5ac442fbd21700eb5df0849bff003cf

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

fs_mkdir $ROOT_DIST_PATH/switch/linkalho

cp -r $PKG_OUT_DIR/linkalho.nro $ROOT_DIST_PATH/switch/linkalho
