source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/exelix11/SysDVR/releases/download/v5.1/SysDVR.zip
PKG_DIR=$ROOT_BUILD_PATH/sysdvr
PKG_OUT_DIR=$ROOT_BUILD_PATH/sysdvr/out
PKG_FILE_PATH=$PKG_DIR/sysdvr.zip
PKG_FILE_HASH=9f3feda435df42168498bc7e3be98b12

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/ $ROOT_DIST_PATH/
