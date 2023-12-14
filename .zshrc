# env
export NVM_DIR="$HOME/.nvm"
export PATH=$PATH:$(go env GOROOT)/bin:$(go env GOPATH)/bin:$HOME/.nodebrew/current/bin:/usr/local/Cellar/composer/2.1.9/bin:$HOME/.composer/vendor/bin:$HOME/.cargo/bin
[ -s "$(brew --prefix nvm)/nvm.sh" ] && . "$(brew --prefix nvm)/nvm.sh"
eval "$(goenv init -)"

export GOROOT="$(brew --prefix golang)/libexec"
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
alias go=~/.goenv/shims/go

##-----------------------------------
#--
#-- aliases
#--
##-----------------------------------

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

# goenv
zplug "RiverGlide/zsh-goenv", from:gitlab

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

# github cli
eval "$(gh completion -s zsh)"

TIMEFMT=$'\n\n========================\nProgram : %J\nCPU     : %P\nuser    : %*Us\nsystem  : %*Ss\ntotal   : %*Es\n========================\n'
