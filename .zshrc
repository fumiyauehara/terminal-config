##-----------------------------------
#--
#-- aliases
#--
##-----------------------------------

alias ll='ls -lh'
alias lla='ls -lha'
alias rm-all-c='docker rm -f $(docker ps -aq)'
alias rm-all-i='docker rmi -f $(docker images -aq)'
alias rm-all-v='docker volume rm -f $(docker volume ls -q)'
alias rm-all='rm-all-c && rm-all-i && rm-all-v'
alias dc='docker-compose'
alias dc-up='dc up -d'
alias dc-down='dc down'
alias dc-log='dc logs -f'
alias mkdir='mkdir -p'
alias p-root='cd-gitroot'


##-----------------------------------
#--
#-- zsh plugins by using the zplug
#--
##-----------------------------------
source ${ZPLUG_HOME}/init.zsh

zplug "mollifier/cd-gitroot"
zplug "b4b4r07/enhancd", use:enhancd.sh
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf
zplug "peco/peco", as:command, from:gh-r

# prezto
zplug "sorin-ionescu/prezto"
zplug "modules/environment", from:prezto
zplug "modules/terminal", from:prezto
zplug "modules/editor", from:prezto
zplug "modules/history", from:prezto
zplug "modules/directory", from:prezto
zplug "modules/spectrum", from:prezto
zplug "modules/utility", from:prezto
zplug "modules/completion", from:prezto
zplug "modules/prompt", from:prezto
zplug "modules/homebrew", from:prezto
zplug "modules/ruby", from:prezto

# auto complete
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "b4b4r07/enhancd", use:init.sh
zplug "b4b4r07/zsh-gomi", if:"which fzf"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

##-----------------------------------
#--
#-- automatically inserted when setting up prezto
#--
##-----------------------------------
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


##-----------------------------------
#--
#-- other
#--
##-----------------------------------
zstyle ':prezto:module:prompt' theme 'pure'

