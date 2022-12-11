#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.199.1/g' package/base-files/files/bin/config_generate

# Modify default theme
# rm -rf package/lean/luci-theme-argon
find ./ -name luci-theme-argon | xargs rm -rf;
find ./ -name luci-app-argon-config | xargs rm -rf;
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/' feeds/luci/collections/luci/Makefile

# Add Packages
git clone https://github.com/MapesxGM/luci-app-tencentddns package/luci-app-tencentddns
git clone https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config
