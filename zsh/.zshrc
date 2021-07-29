export PATH=/opt/homebrew/bin:$PATH

#### FOLLOWING https://scriptingosx.com/2019/06/moving-to-zsh/

export TERM=xterm-256color

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
alias la="ls -al"
alias ls="ls -FG"

alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

export GREP_OPTIONS='--color=auto'

# Visual Studio Code -> to open with code .
function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}

# From https://medium.com/better-programming/6-steps-to-a-beautiful-terminal...
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--extended --height 40% --layout reverse --info inline --border --preview "bat --style=numbers --color=always --line-range :500 {}"'
