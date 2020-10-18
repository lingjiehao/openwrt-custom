#!/bin/bash


export PRJ_ROOT=`pwd`
OPENWRT_ROOT=$PRJ_ROOT/openwrt-dev
CUSTOM_ROOT=$PRJ_ROOT/custom

R2S_DEFCONFIG_FILE=r2s_defconfig

cd $CUSTOM_ROOT
cp $R2S_DEFCONFIG_FILE $OPENWRT_ROOT/.config


cd $OPENWRT_ROOT
./scripts/feeds update -a && ./scripts/feeds install -a

# make defconfig

make download -j4

make -j$(($(nproc)+1)) V=s|| make -j1 V=s
