# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/colinvinson/.oh-my-zsh"

ZSH_THEME="gruvbox"
SOLARIZED_THEME="dark"

plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias gp="git checkout master && git branch --merged > /tmp/merged-branches && vim /tmp/merged-branches && xargs git branch -d < /tmp/merged-branches"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias kill_md="launchctl unload /Library/LaunchAgents/com.microsoft.wdav.tray.plist"

alias music="cmus"

alias e="nvim"

bindkey -v
export PATH="/opt/homebrew/opt/mongodb-community@4.4/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/colinvinson/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
