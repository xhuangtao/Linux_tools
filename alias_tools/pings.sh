pings() {
    if ping -c 1 $IP >/dev/null; then
        echo "$IP Ping is successful."
        continue
    fi
}
IP_LIST="www.qq.com www.baidu.com 192.168.109.11"
for IP in $IP_LIST; do
    pings
    pings
    pings
    echo "$IP Ping is failure!"
done
