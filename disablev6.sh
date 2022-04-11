sudo sed -i '/net.ipv6.conf.all.disable_ipv6/d' /etc/sysctl.conf
sudo sed -i '/net.ipv6.conf.default.disable_ipv6/d' /etc/sysctl.conf
sudo sed -i '/net.ipv6.conf.lo.disable_ipv6/d' /etc/sysctl.conf

sudo echo "net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1" >>/etc/sysctl.conf

sudo sysctl -p /etc/sysctl.conf

sudo cat >> /etc/default/grub <<EOF
GRUB_CMDLINE_LINUX="ipv6.disable=1"
EOF

sudo update-grub || sudo grub2-mkconfig -o /boot/grub2/grub.cfg
