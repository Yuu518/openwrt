#!/bin/bash -e

### Add new packages or patches below
### For example, download alist from a third-party repository to package/new/alist
### Then, add CONFIG_PACKAGE_luci-app-alist=y to the end of openwrt/23-config-common-custom

# alist - add new package
git clone https://$github/sbwml/openwrt-alist package/new/alist

# lrzsz - add patched package
rm -rf feeds/packages/utils/lrzsz
git clone https://$github/sbwml/packages_utils_lrzsz package/new/lrzsz

# timedreboot
rm -rf package/new/extd/luci-app-timedreboot
git clone https://$github/pmkol/luci-app-timedreboot package/new/extd/luci-app-timedreboot

# autotimeset
git clone https://$github/sirpdboy/luci-app-autotimeset package/new/luci-app-autotimeset