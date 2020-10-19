#!/bin/bash


export PRJ_ROOT=`pwd`
OPENWRT_ROOT=$PRJ_ROOT/openwrt-dev
CUSTOM_ROOT=$PRJ_ROOT/custom
R2S_DIFFCONFIG_FILE=r2s.diffconfig

cd $OPENWRT_ROOT
./scripts/feeds update -a && ./scripts/feeds install -a

cp $CUSTOM_ROOT/$R2S_DIFFCONFIG_FILE $OPENWRT_ROOT/.config

make defconfig

make download -j4

make -j$(($(nproc)+1)) || make -j1 V=s
