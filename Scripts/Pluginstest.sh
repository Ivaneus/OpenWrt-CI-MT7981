#!/bin/bash

#Design Theme
git clone --depth=1 --single-branch --branch $(echo $OpenWrt_URL | grep -iEq "lede|padavanonly" && echo "main" || echo "js") https://github.com/papagaye744/luci-theme-design.git
git clone --depth=1 --single-branch https://github.com/gngpp/luci-app-design-config.git

#Argon Theme
#git clone --depth=1 --single-branch --branch $(echo $OpenWrt_URL | grep -iEq "lede|padavanonly" && echo "18.06" || echo "master") https://github.com/jerrykuku/luci-theme-argon.git
#git clone --depth=1 --single-branch --branch $(echo $OpenWrt_URL | grep -iEq "lede|padavanonly" && echo "18.06" || echo "master") https://github.com/jerrykuku/luci-app-argon-config.git

#Extra APP
git clone https://github.com/kiddin9/openwrt-packages
cd ./openwrt-packages && git checkout 89ab7a9cacb40bb8270decc69e55f04571f753d6 && cd ..
git clone https://github.com/xiaorouji/openwrt-passwall
git clone https://github.com/xiaorouji/openwrt-passwall2

#v2raya
svn export https://github.com/v2rayA/v2raya-openwrt/branches/master/luci-app-v2raya
svn export https://github.com/v2rayA/v2raya-openwrt/branches/master/v2raya
rm -rf ./openwrt-packages/luci-base ./openwrt-packages/curl ./openwrt-packages/opkg ./openwrt-packages/luci-opkg ./openwrt-packages/firewall ./openwrt-packages/luci-app-upnp ./openwrt-packages/miniupnpd-iptables ./openwrt-packages/luci-app-zerotier ./openwrt-packages/luci-app-ddns ./openwrt-packages/luci-app-passwall ./openwrt-packages/luci-app-passwall2 ./openwrt-packages/luci-app-v2raya ./openwrt-packages/v2raya







