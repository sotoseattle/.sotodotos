export PATH=/opt/homebrew/bin:$PATH

#### FOLLOWING https://scriptingosx.com/2019/06/moving-to-zsh/

# don't differentiate between low and upcase
# eg. using ls change with -> setopt GLOB_COMPLETE
setopt NO_CASE_GLOB

PROMPT='%(?.%F{green}λ .%F{red}Boom!) '
RPROMPT='%*'

# default editors
export BUNDLER_EDITOR='nvim'
export EDITOR='nvim'
alias vi=nvim
alias vim=nvim

# Mis Aliases
# alias la="ls -al"
alias la="eza -al"
alias tree="eza --tree"
alias ls="ls -FG"

alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

export GREP_OPTIONS='--color=auto'

# From https://medium.com/better-programming/6-steps-to-a-beautiful-terminal...
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# latest version of fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(fzf --zsh)
export FZF_DEFAULT_OPTS='--extended'

eval "$(starship init zsh)"
