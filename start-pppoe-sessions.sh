echo "starting pppoe client1"
sudo docker exec client1 /usr/bin/pon nokia

echo "starting pppoe client2"
sudo docker exec client2 /usr/bin/pon nokia

echo "starting pppoe client3"
sudo docker exec client3 /usr/bin/pon nokia

