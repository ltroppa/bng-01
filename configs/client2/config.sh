cat <<EOT >> /etc/ppp/peers/nokia
noipdefault
defaultroute
hide-password
user "user2"
plugin rp-pppoe.so
eth1
persist
maxfail 0
noauth
EOT

echo "user2 * test123" >> /etc/ppp/chap-secrets
echo "user2 * test123" >> /etc/ppp/pap-secrets

ip link set dev eth0 down
