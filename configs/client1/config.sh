cat <<EOT >> /etc/ppp/peers/nokia
noipdefault
defaultroute
hide-password
user "user1"
plugin rp-pppoe.so
eth1
persist
maxfail 0
noauth
EOT

echo "user1 * test123" >> /etc/ppp/chap-secrets
echo "user1 * test123" >> /etc/ppp/pap-secrets

ip link set dev eth0 down
