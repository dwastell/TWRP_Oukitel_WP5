Acknowledgements; TBC 

https://gist.github.com/rokibhasansagar/15c8e728d94a6bd35a687aac73ef79a5

https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni/tree/twrp-9.0

https://github.com/TeamWin/android_device_oukitel_wp1

AlaskaLinuxUser

https://www.youtube.com/channel/UCnGqG_jyyXmTzdamBpKfeHA

make clean
/snap/bin/docker run --rm -i -e USER_ID=$(id -u) -e GROUP_ID=$(id -g) -v "$(pwd):/home/builder/twrp/:rw,z" -v "${HOME}/.ccache:/srv/ccache:rw,z" fr3akyphantom/droid-builder bash << EOF
cd /home/builder/twrp
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch omni_wp5-eng
make -j$(nproc --all) recoveryimage
exit
EOF




