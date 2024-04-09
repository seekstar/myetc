# Install latest node first, because the latest npm might can not work with old version node.
npm install -g n --registry=https://registry.npmmirror.com
n stable
PATH="$PATH"

# latest npm
cnpm install npm@latest -g
PATH="$PATH"

