source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/ndeadly/MissionControl/releases/tag/v0.5.0
PKG_DIR=$ROOT_BUILD_PATH/MissionControl
PKG_OUT_DIR=$ROOT_BUILD_PATH/MissionControl/out
PKG_FILE_PATH=$PKG_DIR/MissionControl-0.5.0.zip
PKG_FILE_HASH=e54fbcd64754273b050c540036b348a6

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
