make clean
docker run --rm -i -e USER_ID=$(id -u) -e GROUP_ID=$(id -g) -v "$(pwd):/home/builder/twrp/:rw,z" -v "${HOME}/.ccache:/srv/ccache:rw,z" fr3akyphantom/droid-builder bash << EOF
cd /home/builder/twrp
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch omni_wp5-eng
make -j$(nproc --all) recoveryimage
exit
EOF
