source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://tinfoil.media/repo/Tinfoil%20Self%20Installer%20%5B050000BADDAD0000%5D%5B12.10%5D%5Bv11%5D.zip
PKG_DIR=$ROOT_BUILD_PATH/tinfoil
PKG_OUT_DIR=$ROOT_BUILD_PATH/tinfoil/out
PKG_FILE_PATH=$PKG_DIR/Tinfoil.zip
PKG_FILE_HASH=fda17a58da7ae08facdb22bfb3d8862d

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

fs_mkdir $ROOT_DIST_PATH/switch/tinfoil

cp -r $PKG_OUT_DIR/switch/tinfoil $ROOT_DIST_PATH/switch/tinfoil
