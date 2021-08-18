# Allow local customization in the ~/.shell_local_before file
if [ -f ~/.shell_local_before ]; then
    source ~/.shell_local_before
fi

# Allow local customizations in the ~/.zsh_local_before file
if [ -f ~/.zsh_local_before ]; then
    source ~/.zsh_local_before
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

set -o magicequalsubst
export ZSH=~/.zsh

# History See: https://www.soberkoder.com/better-zsh-history/
export HISTFILE=~/.zsh_history
export SAVEHIST=1000000000
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
setopt INC_APPEND_HISTORY # add commands to history immediately.
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY # Records timestamp.
setopt share_history
setopt hist_verify

alias history="history -E"

# load plugins
# Most oh my zsh plugins are simple scripts we can just source. 
# Checkout: https://github.com/ohmyzsh/wiki/Plugins
for f in $ZSH/plugins/*(.); do 
    source $f
done


#load theme
export THEME=powerlevel10k
source $ZSH/themes/$THEME/$THEME.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Auto suggestions
source $ZSH/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"

# Syntax Highlighting
source $ZSH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Allow local customization in the ~/.shell_local_after file
if [ -f ~/.shell_local_after ]; then
    source ~/.shell_local_after
fi

# Allow local customizations in the ~/.zsh_local_after file
if [ -f ~/.zsh_local_after ]; then
    source ~/.zsh_local_after
fi
