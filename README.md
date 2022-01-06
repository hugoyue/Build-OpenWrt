# Build-OpenWrt

Auto Build OpenWrt for x86_64 / HC5962（OpenWrt 固件云编译）

## 介绍

- X86_64 固件大小 832MB (squashfs+EXT4)
- 默认主题为 Argon ，除了对PassWall、Clash、AdGuardHome（广告拦截）、Appfilter（应用过滤）、ZeroTier 等热门插件的支持外，集成了常用的命令行工具如socat\iper3\curl\nano等便于自身维护。
- 默认 Lan IP: `192.168.199.1 ` 账号/密码 `root / password`
- 每月一号自动编译一次新固件，编译成功后Telegram通知（需要在`setting->secrets`添加相应的值）

---

## 版权

[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE) © [**P3TERX**](https://p3terx.com)
