set -xg EDITOR '/usr/bin/vim'

# VirtualFish - fish virtualenvwrapper
# Use same virtualenv location as pipenv
set -xg VIRTUALFISH_HOME ~/.local/share/virtualenvs
# pipenv completions
eval (env _PIPENV_COMPLETE=fish_source pipenv)
# disable double prompt - if you do this, uncomment virtualenv in fish_prompt
# set -xg VIRTUAL_ENV_DISABLE_PROMPT 1

# ssh-agent
if status --is-interactive
	eval (ssh-agent -c)
end

# IBus
set -xg GTK_IM_MODULE ibus
set -xg XMODIFIERS @im=ibus
set -xg QT_IM_MODULE ibus

# Git pager
set -xg LESS eFRX

# NPM
set -xg NPM_PACKAGES $HOME/.npm-packages
set -xg NODE_PATH $NPM_PACKAGES/lib/node_modules $NODE_PATH
set -xg PATH $NPM_PACKAGES/bin $PATH

# Ruby
set -xg PATH (ruby -e 'print Gem.user_dir')/bin $PATH
