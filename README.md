ACKNOWLEDGEMENTS: My thanks primarily to rokibhasansagar whose guide to building TWRP for MTK devices inspired me, a novice, to take the plunge:
https://gist.github.com/rokibhasansagar/15c8e728d94a6bd35a687aac73ef79a5

Rokib provided vital assitance along the way, including crucial patches to roomservice.py (see /MISC) which are required so that TWRP can be built with omniROM for unofficial devices. Rokib's droid-builder docker container was also used for the initial builds (20.04 LTS) before reverting to Ubuntu Bionic.

I also acknowledge chankruze whose WP1 tree provided a useful template for my tree: https://github.com/TeamWin/android_device_oukitel_wp1

The youtube videos of AlaskaLinuxUser were also very helpful: https://www.youtube.com/channel/UCnGqG_jyyXmTzdamBpKfeHA

BUILD DETAILS: A ready-built twrp image may be found in /MISC (this is for a 4 GB WP5). NB. The /data partition is not available - see below 
1) Obvious prerequisites: set up the build environment for AOSP: https://source.android.com/setup/build/initializing (and docker if droid-builder is to be used.)
2) Create the directory twrp9.0 (or a name of your choice) and install the TWRP build platform for Android Pie (9.0) there. 
https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni/tree/twrp-9.0
3) Create the directory /oukitel/wp5 inside /device and download/copy or clone this repository there. The build instructions are given in the repo (unless droid-tool is to be used, in which case copy the MISC/docker.sh to the root your build platform, and run the script therein). 
4) The directory MISC is not part of the tree. It contains the patched roomservice.py, which should be copied to /vendor/omni/build/tools replacing the existing file before building
5) If successful, recovery.img will be found in /out/target/product/wp5. Flash this with fastboot, having ensured you have a copy of the stock recovery.img in case of disaster! NB. Android verified boot must also be disabled by flashing an empty image (patched_vbmeta.img); a copy of this is also in /MISC 

NB. Users will note that the /data partition is not available. This is deliberate - the ability of current versions of TWRP to decrypt is limited, and I've not found a way to decrypt for this device. The partition thus mounts with 0MB! The various workarounds that have been suggested involve reformatting, which effectively wipes the partition. Hence, I thought it safer to exclude the partition. There are many other ways of backing up apps and data, and flash zips can be loaded from either the sdcard or USB storage. For more information, see: https://twrp.me/faq/encryptionsupport.html

MAGISK INTALLATION: I have experienced various problems flashing some Magisk updates, leading to boot-loops. The (recent) version in /MISC works for me, so I have included it here. Also beware of updates with Magisk Manager - these can sometimes also lead to boot-loops and possible corruption of the recovery partition. Best to back up the your current boot.img with TWRP before updating.

DISCLAIMER: unlocking bootloader and flashing non-stock firmware is, of course, at your own risk and you are entirely responsible for taking all the necessary precautions.
