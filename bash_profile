# Simplify Command Prompt
PS1='$ '

export EDITOR='vim'

# let autocomplete work with sudo
complete -cf sudo

# Node Version Manager
. ~/.nvm/nvm.sh

# Key Bindings
bind -f ~/.bash_keybindings

# GIT Autocompletion
source ~/.git-completion.sh

# Colors
export GREP_OPTIONS='--color=auto'
export CLICOLOR=1;

# Bash History
export HISTCONTROL=erasedups
export HISTFILE=$HOME/.bash_history
export HISTSIZE=50000
export HISTIGNORE='&:ls:cd ~:cd ..:[bf]g:exit:h:history'

# == ALIASES =========================================================

# Default Options to commands
alias df='df -h'
alias grep='grep --color=auto'
alias mkdir='mkdir -p'
alias mv='mv -vi'
alias rm='rm -v'
alias vlc='vlc --extraintf http'
alias xclip='xclip -selection c'
alias c='clear'
alias mytar='tar -cvf'
alias myuntar='tar -xvp'

# Paths I frequent
alias ds='cd ~/dev/devseed'
alias d='cd ~/Desktop'
alias gh='cd ~/dev/github'

# Process
alias active='ps auxw | grep post'

# ls
alias ls='ls -aFG'	
alias l='ls -lsh'
alias ll='ls -alsh'

# cd
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# git
alias gl='git log --oneline --decorate'
alias gd='git diff --word-diff'
alias gs='git status -sb'
alias gp='git pull'
alias oc='octogit'

# Linting
alias lint='jshint'
# IRC
alias irc='irssi'
# Edit this file
alias editalias='mvim ~/.bashrc'
# Edit hosts
alias edithosts='mvim ~/.ssh/config'

# == FUNCTIONS =======================================================

function pngencode() {
  # pngencode = BASE-64 encode an image
  openssl enc -base64 -in $1 | tr -d '\n' | pbcopy
}

function xt() {
  # xt = eXTract, a wrapper to extract many different archive formats
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xvjf $1     ;;
      *.tar.gz)    tar xvzf $1     ;;
      *.bz2)       bunzip2 $1      ;;
      *.rar)       unrar x $1      ;;
      *.gz)        gunzip $1       ;;
      *.tar)       tar xvf $1      ;;
      *.tbz2)      tar xvjf $1     ;;
      *.tgz)       tar xvzf $1     ;;
      *.zip)       unzip $1        ;;
      *.Z)         uncompress $1   ;;
      *.7z)        7z x $1         ;;
      *)           echo "'$1' cannot be extracted via >extract<" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# == PATHS ===========================================================

export PATH="/usr/local/bin:/usr/bin:$PATH"

# Postgres App
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

EVENT_NOKQUEUE=1

export PATH=/Library/Frameworks/GDAL.framework/Programs:$PATH

# Mapnik
MAPNIK=/Library/Frameworks/Mapnik.framework
  export PATH=$MAPNIK/Programs:$PATH
  export NODE_PATH=$MAPNIK/Node:$NODE_PATH
  export PYTHONPATH=$MAPNIK/Python:$PYTHONPATH

# ~/.bin executables
export PATH=~/bin:$PATH
# Settings for Mapnik.framework Installer to enable Mapnik programs and python bindings
export PATH=/Library/Frameworks/Mapnik.framework/Programs:$PATH
export PYTHONPATH=/Library/Frameworks/Mapnik.framework/Python:$PYTHONPATH

# Open Mapnik font folder
alias mapnikfonts='open /Library/Frameworks/Mapnik.framework/Versions/2.0/unix/lib/mapnik2/fonts/'

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

##
# Your previous /Users/tristen/.bash_profile file was backed up as /Users/tristen/.bash_profile.macports-saved_2012-09-08_at_22:53:21
##

# MacPorts Installer addition on 2012-09-08_at_22:53:21: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

