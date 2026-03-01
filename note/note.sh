# environment
export ARCH=arm
export CROSS_COMPILE=arm-none-linux-gnueabihf-
export PATH=$PATH:/home/weidong/tools/gcc-arm-11.2-2022.02-x86_64-arm-none-linux-gnueabihf/bin

# build
make distclean
make imx_v7_defconfig
make -j24
rm -rf modules && mkdir -p modules && make INSTALL_MOD_PATH=modules modules_install
