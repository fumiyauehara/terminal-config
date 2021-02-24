##-------------------------------------------------
#--
#-- myself
#--
##-------------------------------------------------
export PATH=$PATH:/opt/homebrew/bin:~/.bin
export ZPLUG_HOME=/opt/homebrew/Cellar/zplug/2.4.2

#--
#-- automatically inserted when setting up prezto
#--
##-------------------------------------------------
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

export EDITOR='nano'
export VISUAL='nano'
export PAGER='less'

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

typeset -gU cdpath fpath mailpath path

path=(
  /usr/local/{bin,sbin}
  $path
)

export LESS='-F -g -i -M -R -S -w -X -z-4'

if (( $#commands[(i)lesspipe(|.sh)] )); then
  export LESSOPEN="| /usr/bin/env $commands[(i)lesspipe(|.sh)] %s 2>&-"
fi

if [ "${SHLVL}" = 1 ] ; then
  tmux new-session \; source-file ~/.tmux/auto-window
fi
