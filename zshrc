# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

set -o magicequalsubst
export ZSH=~/.zsh

# load plugins
# Most oh my zsh plugins are simple scripts we can just source. 
# Checkout: https://github.com/ohmyzsh/wiki/Plugins
for f in $ZSH/plugins; do 
    source $f
done


#load theme
export THEME=powerlevel10k
source $ZSH/themes/$THEME.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
