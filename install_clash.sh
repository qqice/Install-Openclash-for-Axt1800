#!/bin/sh
opkg update

opkg install dnsmasq-full --download-only && opkg remove dnsmasq && opkg install dnsmasq-full --cache . && rm *.ipk

opkg install wget-ssl coreutils-nohup bash iptables curl ca-certificates ipset ip-full iptables-mod-tproxy iptables-mod-extra libcap libcap-bin ruby ruby-yaml kmod-tun luci-compat libcurl4

wget -O /tmp/openclash.ipk https://cdn.jsdelivr.net/gh/vernesong/OpenClash@v0.45.87-beta/luci-app-openclash_0.45.87-beta_all.ipk
opkg install /tmp/openclash.ipk
rm -f /tmp/openclash.ipk
wget -O /tmp/clash_standard.gz https://cdn.jsdelivr.net/gh/Dreamacro/clash@v1.13.0/clash-linux-arm64-v1.13.0.gz
wget -O /tmp/clash_tun.gz https://cdn.jsdelivr.net/gh/Dreamacro/clash@premium/clash-linux-arm64-2023.02.16.gz
wget -O /tmp/clash_meta.gz https://cdn.jsdelivr.net/gh/MetaCubeX/Clash.Meta@v1.14.2/clash.meta-linux-arm64-v1.14.2.gz

