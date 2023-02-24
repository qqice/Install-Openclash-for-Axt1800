#!/bin/sh
opkg update

opkg install dnsmasq-full --download-only && opkg remove dnsmasq && opkg install dnsmasq-full --cache . && rm *.ipk

opkg install wget-ssl coreutils-nohup bash iptables curl ca-certificates ipset ip-full iptables-mod-tproxy iptables-mod-extra libcap libcap-bin ruby ruby-yaml kmod-tun luci-compat libcurl4

wget -O /tmp/openclash.ipk https://cdn.jsdelivr.net/gh/qqice/Install-Openclash-for-Axt1800/assets/luci-app-openclash_0.45.87-beta_all.ipk
opkg install /tmp/openclash.ipk
rm -f /tmp/openclash.ipk

wget -O /tmp/clash.gz https://cdn.jsdelivr.net/gh/qqice/Install-Openclash-for-Axt1800/assets/clash-linux-arm64-v1.13.0.gz
gzip -d /tmp/clash.gz
rm -f /etc/openclash/core/clash
mv /tmp/clash-linux-arm64 /etc/openclash/core/clash
chmod +x /etc/openclash/core/clash

wget -O /tmp/clash_tun.gz https://cdn.jsdelivr.net/gh/qqice/Install-Openclash-for-Axt1800/assets/clash-linux-arm64-2023.02.16.gz
gzip -d /tmp/clash_tun.gz
rm -f /etc/openclash/core/clash_tun
mv /tmp/clash_tun /etc/openclash/core/clash_tun
chmod +x /etc/openclash/core/clash_tun

wget -O /tmp/clash_meta.gz https://cdn.jsdelivr.net/gh/qqice/Install-Openclash-for-Axt1800/assets/clash.meta-linux-arm64-v1.14.2.gz
gzip -d /tmp/clash_meta.gz
rm -f /etc/openclash/core/clash_meta
mv /tmp/clash_meta /etc/openclash/core/clash_meta
chmod +x /etc/openclash/core/clash_meta
