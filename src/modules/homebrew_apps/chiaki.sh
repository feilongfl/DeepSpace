source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://git.sr.ht/~thestr4ng3r/chiaki/refs/download/v2.1.1/Chiaki-v2.1.1-Switch.zip
PKG_DIR=$ROOT_BUILD_PATH/Chiaki
PKG_OUT_DIR=$ROOT_BUILD_PATH/Chiaki/out
PKG_FILE_PATH=$PKG_DIR/Chiaki.zip
PKG_FILE_HASH=6b591f1e1ef085f3424b0146cb154e33

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

# fs_mkdir $ROOT_DIST_PATH/music

cp -r $PKG_OUT_DIR/chiaki.nro $ROOT_DIST_PATH/switch/chiaki.nro
