#!/bin/bash

#删除冲突插件
#rm -rf $(find ./feeds/luci/ -type d -regex ".*\(alist\).*")
#rm -rf $(find ./feeds/packages/ -type d -regex ".*\(alist\).*")
#修改golang版本
ls ./feeds/packages/lang/golang/
echo "------######"
ls ./feeds/packages/lang/golang/golang/
makefilegoversion=$(cat ./feeds/packages/lang/golang/golang/Makefile | grep GO_VERSION_MAJOR_MINOR | cut -d = -f 2)
y_or_n=`echo $makefilegoversion 1.20 | awk '{if($1 > 1.20) print 1; else print 0;}'`
if [ $y_or_n -eq 1 ]
then
    echo "makefilegoversion > 1.20"
cat ./feeds/packages/lang/golang/golang/Makefile | grep -E "GO_VERSION_MAJOR_MINOR:|GO_VERSION_PATCH:|PKG_HASH:"
else
   echo "makefilegoversion <= 1.20"
sed -i "s/GO_VERSION_MAJOR_MINOR:.*/GO_VERSION_MAJOR_MINOR:=1.20/g" ./feeds/packages/lang/golang/golang/Makefile
sed -i "s/GO_VERSION_PATCH:.*/GO_VERSION_PATCH:=8/g" ./feeds/packages/lang/golang/golang/Makefile
sed -i "s/PKG_HASH:.*/PKG_HASH:=38d71714fa5279f97240451956d8e47e3c1b6a5de7cb84137949d62b5dd3182e/g" ./feeds/packages/lang/golang/golang/Makefile
cat ./feeds/packages/lang/golang/golang/Makefile | grep -E "GO_VERSION_MAJOR_MINOR:|GO_VERSION_PATCH:|PKG_HASH:"  
fi
#修改默认主题
sed -i "s/luci-theme-bootstrap/luci-theme-$OpenWrt_THEME/g" $(find ./feeds/luci/collections/ -type f -name "Makefile")
#修改默认IP地址
sed -i "s/192\.168\.[0-9]*\.[0-9]*/$OpenWrt_IP/g" ./package/base-files/files/bin/config_generate
#修改默认密码为password
sed -i 's/root.*/root:$1$j23jzjF7$M4tqDe24tNKd.07hhm3l70:19641:0:99999:7:::/g' ./package/base-files/files/etc/shadow
#修改默认主机名
sed -i "s/hostname='.*'/hostname='$OpenWrt_NAME'/g" ./package/base-files/files/bin/config_generate
#修改默认时区
sed -i "s/timezone='.*'/timezone='CST-8'/g" ./package/base-files/files/bin/config_generate
sed -i "/timezone='.*'/a\\\t\t\set system.@system[-1].zonename='Asia/Shanghai'" ./package/base-files/files/bin/config_generate
#根据源码来修改
if [[ $OpenWrt_URL == *"lede"* ]] ; then
  #修改默认时间格式
  sed -i 's/os.date()/os.date("%Y-%m-%d %H:%M:%S %A")/g' $(find ./package/*/autocore/files/ -type f -name "index.htm")
fi

#设置频率
if [[ $OpenWrt_TARGET == *"rax3000m-emmc-52Mhz"* ]] ; then
  sed -i 's/max-frequency = <26000000>;/max-frequency = <52000000>;/g' ./target/linux/mediatek/files-5.4/arch/arm64/boot/dts/mediatek/mt7981-cmcc-rax3000m-emmc.dts
fi

<< EOF
#golang
if [[ $OpenWrt_TARGET == *"rax3000m-emmc"* ]] ; then
  rm -rf feeds/packages/lang/golang
  git clone https://github.com/sbwml/packages_lang_golang -b 20.x feeds/packages/lang/golang
fi
EOF
