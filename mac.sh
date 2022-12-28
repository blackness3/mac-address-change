mac="00:"`echo $RANDOM | md5sum | sed 's/\(..\)/&:/g' | cut -c1-14`
echo $mac
sudo ifconfig ens16 down
sudo ifconfig ens16 hw ether $mac
sudo ifconfig ens16 up
sudo dhclient &
