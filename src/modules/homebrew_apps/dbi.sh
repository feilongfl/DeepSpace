source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/rashevskyv/dbi/releases/download/345/DBI.nro
PKG_DIR=$ROOT_BUILD_PATH/dbi
PKG_OUT_DIR=$ROOT_BUILD_PATH/dbi/out
PKG_FILE_PATH=$PKG_DIR/DBI.nro
PKG_FILE_HASH=004ac85aa318e2b8fdf2cd9445c34217

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_mkdir $ROOT_DIST_PATH/switch/DBI

cp -r $PKG_FILE_PATH $ROOT_DIST_PATH/switch/DBI
