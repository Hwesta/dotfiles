
# VirtualFish - fish virtualenvwrapper
set -g VIRTUALFISH_COMPAT_ALIASES # uncomment for virtualenvwrapper-style commands
. /usr/share/virtualfish/virtual.fish
# optional plugins
. /usr/share/virtualfish/auto_activation.fish
# . ~/bin/virtualfish/global_requirements.fish

set -xg WORKON_HOME ~/.virtualenv

set -xg EDITOR '/usr/bin/vim'

# ssh-agent
set -xg SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"

# IBus
set -xg GTK_IM_MODULE ibus
set -xg XMODIFIERS @im ibus
set -xg QT_IM_MODULE ibus

# Git pager
set -xg LESS

# NPM
set -xg NPM_PACKAGES $HOME/.npm-packages
set -xg NODE_PATH $NPM_PACKAGES/lib/node_modules $NODE_PATH
set -xg PATH $NPM_PACKAGES/bin $PATH

# Ruby
set -xg PATH (ruby -e 'print Gem.user_dir')/bin $PATH
