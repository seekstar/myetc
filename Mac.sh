#!/usr/bin/env sh
cd ~/git
git clone --depth=1 https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/install.git brew-install
/bin/bash brew-install/install.sh
rm -rf brew-install
cd - > /dev/null

echo 'export PATH="/usr/local/opt/libressl/bin:$PATH"' >> ~/.zshrc
echo export LDFLAGS=\"-L/usr/local/opt/libressl/lib\" >> ~/.zshrc
echo export CPPFLAGS=\"-I/usr/local/opt/libressl/include\" >> ~/.zshrc

# xcrun error
xcode-select --install

brew install trash-cli
brew install visual-studio-code
# Clipboard manager
brew install maccy

# The built-in terminal:
#	Option works. Go to begin/end of line: ctrl+a/e.
#	not working: home/end key, alt+left/right
# iTerm2: Option not working
# Alacritty: not working: Option, home/end key, alt+left/right
# Hyper: Option+left works, Option+right not working
# Kitty:
#	In some ssh servers: top doesn't work. Tap auto-complete messes up for long file/directory names.
#	Option works. Go to begin/end of line: ctrl+a/e. Not working: alt+left/right, home/end key

echo -e "Host *\n\tSetEnv TERM=xterm-256color" >> ~/.ssh/config
# Ghostty

# Make command+` switch to the last focused windows instead of iterate over all windows
brew install alt-tab

brew install wechatwork
brew install tencent-meeting

# Do not generate .DS_Store. But not effective.
#defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE
# reboot

./public.sh

# Latex
# https://zhuanlan.zhihu.com/p/68929563
# brew cask install basictex
