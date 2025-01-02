echo "stopping traffic client1"
sudo docker exec client1 pkill iperf3

#echo "starting traffic client2"
#sudo docker exec client2 iperf3 -c 200.0.0.2 -p 5202 -t 10000 -i 1 -P 8 -b 200K -M 1400


