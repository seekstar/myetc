function sudo_keepalive {
	sudo -v || exit $?
	while true; do
		sudo -nv 
		sleep 60
	done &
	trap "kill $!" EXIT
}
# Reference: https://serverfault.com/questions/266039/temporarily-increasing-sudos-timeout-for-the-duration-of-an-install-script
