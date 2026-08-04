#!/usr/bin/env sh
~/git/myetc/config/init-project/ncpp.sh "$1" && cd "$1" && ~/git/myetc/config/init-project/nvsc.sh && cd ..
