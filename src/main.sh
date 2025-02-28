source src/utils/constants.sh

cs_clean

bash src/modules/system/atmosphere.sh

bash src/modules/bootloader/hekate.sh

bash src/modules/system_modules/sigpatches.sh
bash src/modules/system_modules/sys-con.sh
bash src/modules/system_modules/MissionControl.sh
bash src/modules/system_modules/ldn_mitm.sh
bash src/modules/system_modules/nx-ovlloader.sh
bash src/modules/system_modules/Tesla-Menu.sh
bash src/modules/system_modules/ovl-sysmodules.sh
bash src/modules/system_modules/ovl-EdiZon.sh

bash src/modules/homebrew_apps/aio-switch-updater.sh
bash src/modules/homebrew_apps/Awoo-Installer.sh
bash src/modules/homebrew_apps/Browser.sh
bash src/modules/homebrew_apps/chiaki.sh
bash src/modules/homebrew_apps/dbi.sh
bash src/modules/homebrew_apps/EdiZon.sh
bash src/modules/homebrew_apps/ftpd.sh
bash src/modules/homebrew_apps/hb-appstore.sh
bash src/modules/homebrew_apps/JKSV.sh
bash src/modules/homebrew_apps/linkalho.sh
bash src/modules/homebrew_apps/NX-Activity-Log.sh
bash src/modules/homebrew_apps/NX-Shell.sh
bash src/modules/homebrew_apps/pplay.sh
bash src/modules/homebrew_apps/Tencent-switcher-GUI.sh
bash src/modules/homebrew_apps/Tinfoil.sh
bash src/modules/homebrew_apps/TriPlayer.sh
bash src/modules/homebrew_apps/Switch_90DNS_tester.sh
bash src/modules/homebrew_apps/SysDVR.sh
bash src/modules/homebrew_apps/SkyNX.sh
bash src/modules/homebrew_apps/SkyNX_client.sh

cd $ROOT_DIST_PATH
git_tag=$(git describe --tags)
zip -q -r ../$ROOT_ARTIFACTS_PATH/DeepSpace-$git_tag.zip *
