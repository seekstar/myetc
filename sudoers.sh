# source it

username=$(whoami)
su -c "chmod 640 /etc/sudoers; echo \"$username	ALL=(ALL:ALL) ALL\" >> /etc/sudoers;chmod 440 /etc/sudoers;exit"

