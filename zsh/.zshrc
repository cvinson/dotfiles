# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

source ~/.zsh_env_vars

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
SOLARIZED_THEME="dark"
FZF_BASE="/opt/homebrew/opt/fzf"
autoload -U compinit; compinit
eval "$(fzf --zsh)"

plugins=(
  git
  fzf
  fzf-tab
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias gpa="git checkout master && git branch --list > /tmp/all-branches && vim /tmp/all-branches && xargs git branch -D < /tmp/all-branches"
alias gpm="git checkout master && git branch --merged > /tmp/merged-branches && vim /tmp/merged-branches && xargs git branch -d < /tmp/merged-branches"

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

export FZF_DEFAULT_OPTS="
	--color=fg:#908caa,bg:#232136,hl:#ea9a97
	--color=fg+:#e0def4,bg+:#393552,hl+:#ea9a97
	--color=border:#44415a,header:#3e8fb0,gutter:#232136
	--color=spinner:#f6c177,info:#9ccfd8,separator:#44415a
	--color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa"

alias kill_md="launchctl unload /Library/LaunchAgents/com.microsoft.wdav.tray.plist"

alias music="cmus"

alias e="nvim"
alias ef="e \$(rg --files | fzf)"

alias cat="bat"

# VI Mode
bindkey -v

# Yank to the system clipboard
function vi-yank-xclip {
    zle vi-yank
   echo "$CUTBUFFER" | pbcopy -i
}

zle -N vi-yank-xclip
bindkey -M vicmd 'y' vi-yank-xclip

export PATH="/opt/homebrew/opt/mongodb-community@4.4/bin:$PATH"
export PYTHONPATH="$PYTHONPATH:$(brew --prefix)/opt/notmuch/lib/python3.12/site-packages"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
export PATH="/opt/homebrew/opt/avr-gcc@8/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

