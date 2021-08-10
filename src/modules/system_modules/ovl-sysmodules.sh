source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/WerWolv/ovl-sysmodules/releases/download/v1.2.2/ovlSysmodules.ovl
PKG_DIR=$ROOT_BUILD_PATH/ovl-sysmodules
PKG_OUT_DIR=$ROOT_BUILD_PATH/ovl-sysmodules/out
PKG_FILE_PATH=$PKG_DIR/ovlSysmodules.ovl
PKG_FILE_HASH=3b10f3aba72d6e6dc5897aed7cc94e4c

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

cp -r $PKG_FILE_PATH $ROOT_DIST_PATH/switch/.overlays/
