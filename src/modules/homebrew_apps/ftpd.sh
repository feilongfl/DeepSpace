source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/mtheall/ftpd/releases/download/v3.1.0/ftpd.nro
PKG_DIR=$ROOT_BUILD_PATH/ftpd
PKG_OUT_DIR=$ROOT_BUILD_PATH/ftpd/out
PKG_FILE_PATH=$PKG_DIR/ftpd.nro
PKG_FILE_HASH=bb8a71bc99958701f642279f513a2d9d

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

cp -r $PKG_FILE_PATH $ROOT_DIST_PATH/switch
