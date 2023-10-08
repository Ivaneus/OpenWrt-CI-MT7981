#!/bin/bash

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
svn export https://github.com/v2rayA/v2raya-openwrt/branches/master/luci-app-v2raya
svn export https://github.com/v2rayA/v2raya-openwrt/branches/master/v2raya
svn export https://github.com/kiddin9/openwrt-packages/branches/master/luci-app-homeproxy
svn export https://github.com/kiddin9/openwrt-packages/branches/master/luci-app-passwall2
svn export https://github.com/kiddin9/openwrt-packages/branches/master/luci-app-bypass
svn export https://github.com/kiddin9/openwrt-packages/branches/master/luci-app-ssr-plus
svn export https://github.com/kiddin9/openwrt-packages/branches/master/luci-app-vssr
svn export https://github.com/kiddin9/openwrt-packages/branches/master/luci-app-openclash
svn export https://github.com/kiddin9/openwrt-packages/branches/master/firewall4
