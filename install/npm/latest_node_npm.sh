# Install latest node first, because the latest npm might can not work with old version node.
npm install -g n --registry=https://registry.npmmirror.com
n stable
PATH="$PATH"

# latest npm
npm install -g npm@latest --registry=https://registry.npmmirror.com
PATH="$PATH"
