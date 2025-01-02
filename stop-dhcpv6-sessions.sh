echo "stopping dhvpv6 client1"
sudo docker exec client1 /usr/sbin/dhclient -6 -r eth1

echo "stopping dhvpv6 client2"
sudo docker exec client2 /usr/sbin/dhclient -6 -r eth1

echo "stopping dhvpv6 client3"
sudo docker exec client3 /usr/sbin/dhclient -6 -r eth1

