#!/usr/bin/env sh

(echo -e "Hostname: $(cat /etc/hostname), Message: " && cat) | curl -d @- ntfy.sh/__topic_name__ > /dev/null
