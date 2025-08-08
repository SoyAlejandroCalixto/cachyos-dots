if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(zoxide init zsh)"
eval "$(atuin init zsh)"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias vim=nvim
alias rcat=/usr/bin/cat
alias cat=bat
alias rls=/usr/bin/ls
alias ls=lsd
alias update="sudo pacman -Syu"
alias clean="sudo pacman -Scc && sudo rm -rf .cache/*"

export PATH=$PATH:/home/kappy/.spicetify
eval "$(fnm env --use-on-cd --shell zsh)"
