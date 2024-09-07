#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/OpenWrt/YuJRouter/g' package/base-files/files/bin/config_generate

#设置密码
echo "sed -i 's/root::0:0:99999:7:::/root:$1$TEkD9W7A$3GrY7.fWsVOa4OJ1d/FXm/:18520:0:99999:7:::/g' /etc/shadow" >> package/lean/default-settings/files/zzz-default-settings
echo "sed -i '2a\ifconfig eth1 192.168.1.3 netmask 255.255.255.0 broadcast 192.168.1.255' /etc/rc.local" >> package/lean/default-settings/files/zzz-default-settings
echo "sed -i '3a\iptables -I forwarding_rule -d 192.168.1.1 -j ACCEPT' /etc/rc.local" >> package/lean/default-settings/files/zzz-default-settings
echo "sed -i '4a\iptables -t nat -I postrouting_rule -d 192.168.1.1 -j MASQUERADE' /etc/rc.local" >> package/lean/default-settings/files/zzz-default-settings
echo "echo "javedyu@outlook.com:*:1000:65534:javedyu@outlook.com:/var:/bin/false" >> /etc/passwd " >> package/lean/default-settings/files/zzz-default-settings
