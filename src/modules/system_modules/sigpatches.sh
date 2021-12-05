source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/ITotalJustice/patches/releases/download/13.2.0-1.2.5/fusee.zip
PKG_DIR=$ROOT_BUILD_PATH/sigpatches
PKG_OUT_DIR=$ROOT_BUILD_PATH/sigpatches/out
PKG_FILE_PATH=$PKG_DIR/fusee_13.2.0.zip
PKG_FILE_HASH=2af84a6aadfc2813fdb58bd07fd6a166

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
