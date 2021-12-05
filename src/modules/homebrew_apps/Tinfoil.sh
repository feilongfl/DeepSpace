source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://tinfoil.media/repo/Tinfoil%20Self%20Installer%20%5B050000BADDAD0000%5D%5B13.0%5D%5Bv8%5D.zip
PKG_DIR=$ROOT_BUILD_PATH/tinfoil
PKG_OUT_DIR=$ROOT_BUILD_PATH/tinfoil/out
PKG_FILE_PATH=$PKG_DIR/Tinfoil-self-installer-13.0.zip
PKG_FILE_HASH=62d60e856773ecedc45a33491d908ffd

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

fs_mkdir $ROOT_DIST_PATH/switch/tinfoil

cp -r $PKG_OUT_DIR/switch/tinfoil $ROOT_DIST_PATH/switch/tinfoil
cp src/modules/homebrew_apps/tinfoil-locations.conf $ROOT_DIST_PATH/switch/tinfoil/locations.conf
