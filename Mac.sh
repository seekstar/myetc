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
# The built-in terminal: Can't go to the home/end of the line with the home/end key or alt+<left/right-arrow>
# iTerm2: Option not working
# Ghostty: The home/end key doesn't work. But alt+<left/right-arrow> works
brew install ghostty
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
