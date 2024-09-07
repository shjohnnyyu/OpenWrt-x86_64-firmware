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
sed -i 's/192.168.100.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/OpenWrt/YuJRouter/g' package/base-files/files/bin/config_generate

#Add
#sed -i 's/root::0:0:99999:7:::/root:$1$TEkD9W7A$3GrY7.fWsVOa4OJ1d/FXm/:18520:0:99999:7:::/g' /etc/shadow
#sed -i '2a\ifconfig eth1 192.168.1.3 netmask 255.255.255.0 broadcast 192.168.1.255' /etc/rc.local
#sed -i '3a\iptables -I forwarding_rule -d 192.168.1.1 -j ACCEPT' /etc/rc.local
#sed -i '4a\iptables -t nat -I postrouting_rule -d 192.168.1.1 -j MASQUERADE' /etc/rc.local
#echo "javedyu@outlook.com:*:1000:65534:javedyu@outlook.com:/var:/bin/false" >> /etc/passwd
