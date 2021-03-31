#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#

# 修改openwrt登陆地址,把下面的192.168.2.2修改成你想要的就可以了
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

# 修改主机名字，把OpenWrt-123修改你喜欢的就行（不能纯数字或者使用中文）
sed -i '/uci commit system/i\uci set system.@system[0].hostname='OpenWrt'' package/lean/default-settings/files/zzz-default-settings

# 版本号里显示一个自己的名字（fz build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
sed -i "s/OpenWrt /fz build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

# 修改 argon 为默认主题,可根据你喜欢的修改成其他的（不选择那些会自动改变为默认主题的主题才有效果）
sed -i 's/luci-theme-bootstrap/luci-theme-mcat/g' feeds/luci/collections/luci/Makefile

# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

# 修改内核版本
#sed -i 's/PATCHVER:=5.4/PATCHVER:=4.19/g' target/linux/x86/Makefile

# 修改插件名字（修改名字后不知道会不会对插件功能有影响，自己多测试）
sed -i 's/"Web 管理"/"Web管理"/g' package/lean/luci-app-webadmin/po/zh-cn/webadmin.po
sed -i 's/"管理权"/"密码设置"/g' feeds/luci/modules/luci-base/po/zh-cn/base.po
sed -i 's/"带宽监控"/"带宽监控"/g' feeds/luci/applications/luci-app-nlbwmon/po/zh-cn/nlbwmon.po
sed -i 's/ShadowSocksR Plus+/SSRplus+/g' package/lean/ssrplus/luci-app-ssr-plus/luasrc/controller/shadowsocksr.lua
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/lean/luci-app-sfe/po/zh-cn/sfe.po
sed -i 's/"实时流量监测"/"流量监测"/g' package/lean/luci-app-wrtbwmon/po/zh-cn/wrtbwmon.po
sed -i 's/"KMS 服务器"/"KMS激活"/g' package/lean/luci-app-vlmcsd/po/zh-cn/vlmcsd.zh-cn.po
sed -i 's/"TTYD 终端"/"TTYD终端"/g' package/lean/luci-app-ttyd/po/zh-cn/terminal.po
sed -i 's/"USB 打印服务器"/"打印服务"/g' package/lean/luci-app-usb-printer/po/zh-cn/usb-printer.po
sed -i 's/"网络存储"/"网络存储"/g' package/lean/luci-app-usb-printer/po/zh-cn/usb-printer.po
sed -i 's/挂载 SMB 网络共享/SMB共享/g' package/lean/luci-app-cifs-mount/po/zh-cn/cifs.po
sed -i 's/"文件浏览器"/"文件浏览器"/g' package/danshui/luci-app-filebrowser/po/zh-cn/filebrowser.po
sed -i 's/PassWall/PassWall/g' package/danshui/passwall/luci-app-passwall/po/zh-cn/passwall.po
sed -i 's/广告屏蔽大师 Plus+/广告屏蔽大师Plus+/g' package/lean/luci-app-adbyby-plus/po/zh-cn/adbyby.po
sed -i 's/京东签到服务/京东签到/g' package/danshui/luci-app-jd-dailybonus/luasrc/controller/jd-dailybonus.lua
sed -i 's/KMS 服务器/KMS激活/g' package/lean/luci-app-vlmcsd/po/zh-cn/vlmcsd.zh-cn.po
sed -i 's/msgstr "UPnP"/msgstr "UPnP设置"/g' feeds/luci/applications/luci-app-upnp/po/zh-cn/upnp.po
sed -i 's/Frp 内网穿透/Frp客户端/g' package/lean/luci-app-frpc/po/zh-cn/frp.po
sed -i 's/Frps/Frp服务端/g' package/lean/luci-app-frps/luasrc/controller/frps.lua
sed -i 's/Nps 内网穿透/NPS客户端/g' package/lean/luci-app-nps/po/zh-cn/nps.po
sed -i 's/解锁网易云灰色歌曲/解锁网易云音乐/g' package/lean/luci-app-unblockmusic/po/zh-cn/unblockmusic.po
sed -i 's/Docker CE 容器/Docker容器/g' package/lean/luci-app-docker/po/zh-cn/docker.po
sed -i 's/UU游戏加速器/UU加速器/g' package/lean/luci-app-uugamebooster/po/zh-cn/uuplugin.po
sed -i 's/msgstr "FTP 服务器"/msgstr "FTP服务器"/g' package/lean/luci-app-vsftpd/po/zh-cn/vsftpd.po
sed -i 's/Rclone/Rclone/g' package/lean/luci-app-rclone/luasrc/controller/rclone.lua
