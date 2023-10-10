#!/bin/bash

#istore Theme
svn export https://github.com/kiddin9/openwrt-packages/branches/master/luci-app-quickstart
svn export https://github.com/kiddin9/openwrt-packages/branches/master/quickstart
svn export https://github.com/kiddin9/openwrt-packages/branches/master/luci-app-istorex
svn export https://github.com/kiddin9/openwrt-packages/branches/master/luci-app-store
svn export https://github.com/kiddin9/openwrt-packages/branches/master/luci-lib-taskd
svn export https://github.com/kiddin9/openwrt-packages/branches/master/luci-app-store
svn export https://github.com/kiddin9/openwrt-packages/branches/master/luci-lib-taskd

#Design Theme
git clone --depth=1 --single-branch --branch $(echo $OpenWrt_URL | grep -iEq "lede|padavanonly" && echo "main" || echo "js") https://github.com/papagaye744/luci-theme-design.git
git clone --depth=1 --single-branch https://github.com/gngpp/luci-app-design-config.git

#Argon Theme
#git clone --depth=1 --single-branch --branch $(echo $OpenWrt_URL | grep -iEq "lede|padavanonly" && echo "18.06" || echo "master") https://github.com/jerrykuku/luci-theme-argon.git
#git clone --depth=1 --single-branch --branch $(echo $OpenWrt_URL | grep -iEq "lede|padavanonly" && echo "18.06" || echo "master") https://github.com/jerrykuku/luci-app-argon-config.git
#Linkease
#git clone --depth=1 --single-branch https://github.com/linkease/istore.git
#git clone --depth=1 --single-branch https://github.com/linkease/nas-packages.git
#git clone --depth=1 --single-branch https://github.com/linkease/nas-packages-luci.git
#unblockneteasemusic
#git clone --depth=1 --single-branch --branch $(echo $OpenWrt_URL | grep -iEq "lede|padavanonly" && echo "master" || echo "js") https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git
#alist
#git clone --depth=1 --single-branch --branch "master" https://github.com/sbwml/luci-app-alist.git
#lucky
#git clone --depth=1 --single-branch --branch "main" https://github.com/gdy666/luci-app-lucky.git

#v2raya
svn export https://github.com/v2rayA/v2raya-openwrt/branches/master/luci-app-v2raya
#svn export https://github.com/v2rayA/v2raya-openwrt/branches/master/v2raya

#homeproxy
svn export https://github.com/kiddin9/openwrt-packages/branches/master/luci-app-homeproxy

#passwall
#svn export https://github.com/kiddin9/openwrt-packages/branches/master/luci-app-passwall2

#passwall2
svn export https://github.com/kiddin9/openwrt-packages/branches/master/luci-app-passwall2

#bypass
svn export https://github.com/kiddin9/openwrt-packages/branches/master/luci-app-bypass

#ssrplus
svn export https://github.com/kiddin9/openwrt-packages/branches/master/luci-app-ssr-plus

#vssr
svn export https://github.com/kiddin9/openwrt-packages/branches/master/luci-app-vssr

#bypass
svn export https://github.com/kenzok8/small/branches/master/luci-app-bypass

#openclash
svn export https://github.com/kiddin9/openwrt-packages/branches/master/luci-app-openclash

#daed
svn export https://github.com/kiddin9/openwrt-packages/branches/master/daed
svn export https://github.com/kiddin9/openwrt-packages/branches/master/luci-app-daed

#systools
git clone https://github.com/sirpdboy/netspeedtest.git
git clone https://github.com/sirpdboy/luci-app-autotimeset.git
git clone https://github.com/sirpdboy/luci-app-advanced.git




