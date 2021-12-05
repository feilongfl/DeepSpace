source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/Atmosphere-NX/Atmosphere/releases/download/1.2.5/atmosphere-1.2.5-master-1019bc54e+hbl-2.4.1+hbmenu-3.5.0.zip
PKG_DIR=$ROOT_BUILD_PATH/atmosphere
PKG_OUT_DIR=$ROOT_BUILD_PATH/atmosphere/out
PKG_FILE_PATH=$PKG_DIR/atmosphere-1.2.5.zip
PKG_FILE_HASH=b464e55e089fcb4b7531e6bdac22e741

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH

DIST_EXOSPHERE_FILE_PATH=$ROOT_DIST_PATH/exosphere.ini
cp $ROOT_DIST_PATH/atmosphere/config_templates/exosphere.ini $DIST_EXOSPHERE_FILE_PATH
sed -i "" -e 's/blank_prodinfo_sysmmc=0/blank_prodinfo_sysmmc=1/' -e 's/blank_prodinfo_emummc=0/blank_prodinfo_emummc=1/' $DIST_EXOSPHERE_FILE_PATH

DIST_SYSTEM_SETTINGS_FILE_PATH=$ROOT_DIST_PATH/atmosphere/config/system_settings.ini
cp $ROOT_DIST_PATH/atmosphere/config_templates/system_settings.ini $DIST_SYSTEM_SETTINGS_FILE_PATH
sed -i "" -e 's/; dmnt_cheats_enabled_by_default = u8!0x1/dmnt_cheats_enabled_by_default = u8!0x0/' $DIST_SYSTEM_SETTINGS_FILE_PATH

fs_mkdir $ROOT_DIST_PATH/atmosphere/hosts
cp src/modules/system/atmosphere/hosts/default.txt $ROOT_DIST_PATH/atmosphere/hosts/default.txt
