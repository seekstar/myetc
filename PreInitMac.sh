/bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"
echo 'export PATH="/usr/local/opt/libressl/bin:$PATH"' >> ~/.zshrc
echo export LDFLAGS=\"-L/usr/local/opt/libressl/lib\" >> ~/.zshrc
echo export CPPFLAGS=\"-I/usr/local/opt/libressl/include\" >> ~/.zshrc

# xcrun error
xcode-select --install

brew install trash-cli
brew install wget
brew install cmake

bash public.sh
bash unix.sh

# Latex
# https://zhuanlan.zhihu.com/p/68929563
# brew cask install basictex
