source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/DevL0rd/SkyNX/releases/download/v1.4/SkyNX.zip
PKG_DIR=$ROOT_BUILD_PATH/skynx
PKG_OUT_DIR=$ROOT_BUILD_PATH/skynx/out
PKG_FILE_PATH=$PKG_DIR/skynx.zip
PKG_FILE_HASH=9d2244a38f48771e17c7f64a86182507

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/switch/SkyNX $ROOT_DIST_PATH/switch/SkyNX
cp -r $PKG_OUT_DIR/SkyNX_Forwarder.nsp $ROOT_DIST_PATH/app/
