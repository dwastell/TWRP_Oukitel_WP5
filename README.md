My thanks primarily to rokibhasansagar whose guide to building TWRP for MTK devices inspired me, a novice, to take the plunge:

https://gist.github.com/rokibhasansagar/15c8e728d94a6bd35a687aac73ef79a5

Rokib provided vital assitance along the way, including crucial patches to roomservice.py which are required so that TWRP can be built with omniROM for unofficial devices. The build was also performed using Rokib's droid-builder docker container.

I also acklowedge chankruze whose WP1 tree provided a useful template:

https://github.com/TeamWin/android_device_oukitel_wp1

The videos of AlaskaLinuxUser were also very helpful

https://www.youtube.com/channel/UCnGqG_jyyXmTzdamBpKfeHA

https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni/tree/twrp-9.0

make clean
/snap/bin/docker run --rm -i -e USER_ID=$(id -u) -e GROUP_ID=$(id -g) -v "$(pwd):/home/builder/twrp/:rw,z" -v "${HOME}/.ccache:/srv/ccache:rw,z" fr3akyphantom/droid-builder bash << EOF
cd /home/builder/twrp
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch omni_wp5-eng
make -j$(nproc --all) recoveryimage
exit
EOF




