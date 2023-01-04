#          Android device tree for T-Mobile TMRVL4G (Newcastle)

```                        Basic	Spec Sheet
                        Codename	Newcastle
                     Device name	REVVL V
                           Model        TMRVL4G
                             CPU	Octa-core
                         Chipset	MediaTek MT6765
                             GPU	PowerVR Rogue GE8320
                             RAM	2822.0 MB
                         Version	Android 12
                         Storage	21.6 GB
                         Battery	Li-ion 4000.0 mAh, non-removable
                         Display	1600X720 pixels
                   Camera (Back)	9.7 MP, 3840x2160, f/3.38 mm
                  Camera (Front)	5.0 MP, 2592x1944, f/2.30 mm

#  Building

#  Basic instructions. From there you'll need to research.

#  Get started with https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp/tree/twrp-12.1

#  To get started with AOSP sources to build TWRP, you'll need to get familiar with Git and Repo.

#  To initialize your local repository using the AOSP trees to build TWRP, use a command like this:

   repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1

#  To initialize a shallow clone, which will save even more space, use a command like this:

   repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1

#  Then to sync up:

   repo sync 
   
#  Or try a bit faster sync: 

   repo sync --force-sync -j5 --current-branch --no-clone-bundle --no-tags
   
#  Add this device tree to device/wingtech/Newcastle

   mkdir -p device/wingtech && cd device/wingtech
   git clone https://github.com/VatoLoco4ever/Newcastle.git
   cd ../..
   
#  Try an eng build.
   
   export ALLOW_MISSING_DEPENDENCIES=true; . build/envsetup.sh; lunch twrp_Newcastle-eng
   build/soong/soong_ui.bash --make-mode --skip-make -j5 bootimage
   
#  You should now be able to flash 
   
   cd out/target/product/Newcastle
   fastboot flash boot boot.img

   
   
