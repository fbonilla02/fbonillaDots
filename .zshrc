

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

if [ -z "$ZELLIJ" ]; then
	exec zellij
fi
plugins=(git)

source $ZSH/oh-my-zsh.sh
if [[ "$(uname)" == "Darwin" ]]; then
    # macOS
    BREW_BIN="/opt/homebrew/bin"
else
    # Linux
    BREW_BIN="/home/linuxbrew/.linuxbrew/bin"
fi

# Usar la variable BREW_BIN donde se necesite

eval "$($BREW_BIN/brew shellenv)"

source $(dirname $BREW_BIN)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(dirname $BREW_BIN)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

. "$HOME/.cargo/env"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
