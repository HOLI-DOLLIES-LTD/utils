sed -i '/net.ipv6.conf.all.disable_ipv6/d' /etc/sysctl.d/99-sysctl.conf
sed -i '/net.ipv6.conf.default.disable_ipv6/d' /etc/sysctl.d/99-sysctl.conf
sed -i '/net.ipv6.conf.lo.disable_ipv6/d' /etc/sysctl.d/99-sysctl.conf
sed -i '/net.ipv6.conf.all.disable_ipv6/d' /etc/sysctl.conf
sed -i '/net.ipv6.conf.default.disable_ipv6/d' /etc/sysctl.conf
sed -i '/net.ipv6.conf.lo.disable_ipv6/d' /etc/sysctl.conf

echo "net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1" >>/etc/sysctl.d/99-sysctl.conf
sysctl --system
