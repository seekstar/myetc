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
# The built-in terminal returns to the home of the terminal instead of the beginning of the line when the home key is pressed
brew install iterm2

brew install wechatwork
brew install tencent-meeting

# Do not generate .DS_Store. But not effective.
#defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE
# reboot

./public.sh

# Latex
# https://zhuanlan.zhihu.com/p/68929563
# brew cask install basictex
