source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/Moehammered/switch-remote-play/releases/download/0.9.0/switch-remote-play-install_v0.9.0.zip
PKG_DIR=$ROOT_BUILD_PATH/SwitchRemotePlay
PKG_OUT_DIR=$ROOT_BUILD_PATH/SwitchRemotePlay/out
PKG_FILE_PATH=$PKG_DIR/SwitchRemotePlay.zip
PKG_FILE_HASH=6da9b36a1a3d30f1e181ed2f813c1018

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -rv $PKG_OUT_DIR/switch-remote-play-install_v0.9.0/switch/* $ROOT_DIST_PATH/switch/
