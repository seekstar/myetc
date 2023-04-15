#su -c "apt install sudo"

if command -v sudo > /dev/null 2>&1; then
	echo sudo is ok
else
	username=$(whoami)
	su -c "chmod 640 /etc/sudoers; echo \"$username	ALL=(ALL:ALL) ALL\" >> /etc/sudoers;chmod 440 /etc/sudoers;exit"
	echo sudo fixed
fi

