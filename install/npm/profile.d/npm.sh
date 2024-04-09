# https://github.com/tj/n#custom-source
export N_NODE_MIRROR=https://npmmirror.com/mirrors/node
# https://github.com/tj/n#optional-environment-variables
export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$PATH

# https://stackoverflow.com/a/26825428
NPM_PACKAGES="$HOME/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
export PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
