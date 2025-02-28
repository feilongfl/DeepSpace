source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/ndeadly/MissionControl/releases/download/v0.6.3/MissionControl-0.6.3-master-23f3437.zip
PKG_DIR=$ROOT_BUILD_PATH/MissionControl
PKG_OUT_DIR=$ROOT_BUILD_PATH/MissionControl/out
PKG_FILE_PATH=$PKG_DIR/MissionControl_v0.6.3.zip
PKG_FILE_HASH=824b7caaf8c4a288bc3f214a548101f5

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
