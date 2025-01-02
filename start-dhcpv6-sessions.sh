echo "starting dhcpv6 client1"
sudo docker exec client1 /usr/sbin/dhclient -6 eth1
sudo docker exec client1 /usr/sbin/dhclient -6 -P eth1

echo "starting dhcpv6 client2"
sudo docker exec client2 /usr/sbin/dhclient -6 eth1
sudo docker exec client2 /usr/sbin/dhclient -6 -P eth1

echo "starting dhcpv6 client3"
sudo docker exec client3 /usr/sbin/dhclient -6 eth1
sudo docker exec client3 /usr/sbin/dhclient -6 -P eth1

