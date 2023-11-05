#!/bin/bash

#Design Theme
git clone --depth=1 --single-branch --branch $(echo $OpenWrt_URL | grep -iEq "lede|padavanonly" && echo "main" || echo "js") https://github.com/papagaye744/luci-theme-design.git
git clone --depth=1 --single-branch https://github.com/gngpp/luci-app-design-config.git

#Argon Theme
#git clone --depth=1 --single-branch --branch $(echo $OpenWrt_URL | grep -iEq "lede|padavanonly" && echo "18.06" || echo "master") https://github.com/jerrykuku/luci-theme-argon.git
#git clone --depth=1 --single-branch --branch $(echo $OpenWrt_URL | grep -iEq "lede|padavanonly" && echo "18.06" || echo "master") https://github.com/jerrykuku/luci-app-argon-config.git

#Extra APP
git clone https://github.com/kiddin9/openwrt-packages.git
git clone https://github.com/xiaorouji/openwrt-passwall.git
git clone https://github.com/xiaorouji/openwrt-passwall2.git

#v2raya
git clone https://github.com/v2rayA/v2raya-openwrt.git
rm -rf ./v2raya-openwrt/ca-certificates ./v2raya-openwrt/scripts ./v2raya-openwrt/v2fly-geodata ./v2raya-openwrt/v2ray-core ./v2raya-openwrt/xray-core
rm -rf ./openwrt-packages/luci-base ./openwrt-packages/curl ./openwrt-packages/opkg ./openwrt-packages/luci-opkg ./openwrt-packages/luci-app-firewall ./openwrt-packages/firewall ./openwrt-packages/firewall4 ./openwrt-packages/luci-app-upnp ./openwrt-packages/miniupnpd-iptables ./openwrt-packages/luci-app-zerotier ./openwrt-packages/luci-app-ddns ./openwrt-packages/luci-app-passwall ./openwrt-packages/luci-app-passwall2 ./openwrt-packages/luci-app-v2raya ./openwrt-packages/v2raya







