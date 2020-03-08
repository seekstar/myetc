sudo echo -n
if [ $? ]; then
	username=$(whoami)
	su -c "apt install sudo; chmod 640 /etc/sudoers; echo \"$username	ALL=(ALL:ALL) ALL\" >> /etc/sudoers;chmod 440 /etc/sudoers;exit"
	echo sudo fixed
else
	echo sudo is ok
fi

