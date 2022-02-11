if [[ -f /etc/redhat-release ]]; then
		echo "Centos"
	elif cat /etc/issue | grep -q -E -i "debian"; then
		echo "Debian"
	elif cat /etc/issue | grep -q -E -i "ubuntu"; then
		echo "Ubuntu"
	elif cat /etc/issue | grep -q -E -i "centos|red hat|redhat"; then
		echo "Centos"
	elif cat /proc/version | grep -q -E -i "debian"; then
		echo "Debian"
	elif cat /proc/version | grep -q -E -i "ubuntu"; then
		echo "Ubuntu"
	elif cat /proc/version | grep -q -E -i "centos|red hat|redhat"; then
		echo "Centos"
  else 
    echo "Else"
  fi
