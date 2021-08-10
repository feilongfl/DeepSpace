source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/tallbl0nde/NX-Activity-Log/releases/download/v1.4.0/NX-Activity-Log.nro
PKG_DIR=$ROOT_BUILD_PATH/NX-Activity-Log
PKG_OUT_DIR=$ROOT_BUILD_PATH/NX-Activity-Log/out
PKG_FILE_PATH=$PKG_DIR/NX-Activity-Log.nro
PKG_FILE_HASH=2a16ea35e240a5e3c3fca1a0550b4e1c

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_mkdir $ROOT_DIST_PATH/switch/NX-Activity-Log

cp -r $PKG_FILE_PATH $ROOT_DIST_PATH/switch/NX-Activity-Log
