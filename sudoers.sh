if command -v sudo > /dev/null 2>&1; then
	echo sudo is ok
else
	username=$(whoami)
	su -c "$APT install sudo; chmod 640 /etc/sudoers; echo \"$username	ALL=(ALL:ALL) ALL\" >> /etc/sudoers;chmod 440 /etc/sudoers;exit"
	echo sudo fixed
fi

