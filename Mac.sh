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

# The built-in terminal: The window doesn't close after exit. not working: home/end key, alt+left/right
# iTerm2: Option not working
# Ghostty: Can't use tmux in some ssh servers
# Alacritty: Option, home/end key, alt+left/right, all not working
# Hyper: Option+left works, Option+right not working
# Kitty: Option works. Go to begin/end of line: ctrl+a/e. Not working: alt+left/right, home/end key
brew install kitty

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
