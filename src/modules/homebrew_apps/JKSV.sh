source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/J-D-K/JKSV/releases/download/08.01.2021/JKSV.nro
PKG_DIR=$ROOT_BUILD_PATH/JKSV
PKG_OUT_DIR=$ROOT_BUILD_PATH/JKSV/out
PKG_FILE_PATH=$PKG_DIR/JKSV.nro
PKG_FILE_HASH=f30145f1c64d9b54591a5d68a3c42e8e

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_mkdir $ROOT_DIST_PATH/switch/JKSV

cp -r $PKG_FILE_PATH $ROOT_DIST_PATH/switch/JKSV
