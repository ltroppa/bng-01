echo "stopping pppoe client1"
sudo docker exec client1 /usr/bin/poff nokia

echo "stopping pppoe client2"
sudo docker exec client2 /usr/bin/poff nokia

echo "stopping pppoe client3"
sudo docker exec client3 /usr/bin/poff nokia

