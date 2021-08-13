source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/tallbl0nde/TriPlayer/releases/download/v1.1.1/triplayer-1.1.1.zip
PKG_DIR=$ROOT_BUILD_PATH/triplayer
PKG_OUT_DIR=$ROOT_BUILD_PATH/triplayer/out
PKG_FILE_PATH=$PKG_DIR/triplayer.zip
PKG_FILE_HASH=271ba0468d06a2a7c1fea5369efc2008

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

fs_mkdir $ROOT_DIST_PATH/music

cp -r $PKG_OUT_DIR/ $ROOT_DIST_PATH/
