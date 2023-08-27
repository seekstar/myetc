#sudo reflector --country China --protocol https --sort rate --save /etc/pacman.d/mirrorlist
#sudo mv /etc/xdg/reflector/reflector.conf /etc/xdg/reflector/reflector.conf.$(date +%Y%m%d%X%N)
#sudo cp config/reflector.conf /etc/xdg/reflector/
#sudo systemctl enable reflector.timer
#sudo systemctl start reflector.timer

bash pacman.sh
bash public.sh
