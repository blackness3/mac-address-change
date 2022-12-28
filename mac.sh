mac="00:"`echo $RANDOM | md5sum | sed 's/\(..\)/&:/g' | cut -c1-14`
echo $mac
sudo ifconfig eth0 down
sudo ifconfig eth0 hw ether $mac
sudo ifconfig eth0 up
sudo dhclient &
