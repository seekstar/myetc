sudo_keepalive() {
	trap "exit" INT TERM
	trap "pkill -P $$" EXIT
	sudo -v || exit $?
	while true; do
		sleep 60
		sudo -nv 
	done &
}
# Reference: https://serverfault.com/questions/266039/temporarily-increasing-sudos-timeout-for-the-duration-of-an-install-script
