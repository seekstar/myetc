#!/usr/bin/env sh
if [ ! "$1" ]; then
	echo "$0" topic-name
	exit 1
fi
topic_name=$1

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

if [ ! -f ~/.tmux.conf ]; then
	cat > ~/.tmux.conf <<EOF
set-window-option -g mode-keys vi

# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'rickstaa/tmux-notify'
set -g @tnotify-custom-cmd 'echo "\$(tmux display-message -p \#S) 程序跑完啦" | ~/software/notify.sh'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
EOF
fi

~/.tmux/plugins/tpm/scripts/install_plugins.sh

sed "s/__topic_name__/$topic_name/g" template/ntfy.sh > ~/software/notify.sh
