

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/thawkins/.oh-my-zsh"
source $HOMEBREW_PREFIX/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle z-shell/zsh-navigation-tools@main
antigen bendle zsh-users/zsh-syntax-highlighting

antigen theme romkatv/powerlevel10k
antigen apply


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

alias glg="git log --all --graph --decorate"
alias projects="cd ~/projects"
alias trading-console="cd ~/projects/trading-console"
export PATH="/usr/local/opt/helm@2/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/thawkins/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/thawkins/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/thawkins/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/thawkins/google-cloud-sdk/completion.zsh.inc'; fi

