source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/ndeadly/MissionControl/releases/download/v0.5.1/MissionControl-0.5.1-master-6fdc8ee.zip
PKG_DIR=$ROOT_BUILD_PATH/MissionControl
PKG_OUT_DIR=$ROOT_BUILD_PATH/MissionControl/out
PKG_FILE_PATH=$PKG_DIR/MissionControl.zip
PKG_FILE_HASH=c6e601762a112eab52de42923c5d6aba

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
