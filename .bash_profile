# Customized Command Prompt
function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\$(parse_git_branch)\[\e[0m\]\[\e[36;0m\]$ "

export EDITOR='vim'

# let autocomplete work with sudo
complete -cf sudo

# Key Bindings
bind -f ~/.bash_keybindings

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

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

# Run Chrome in unsafe mode
alias unsafechrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-web-security'

# Paths I frequent
alias ds='cd ~/dev/mapbox'
alias d='cd ~/Desktop'
alias gh='cd ~/dev/github'
alias osm='cd ~/dev/osm'

# Process
alias active='ps auxw | grep post'

# ls
alias ls='ls -aFG'	
alias l='ls -lsh'
alias ll='ls -alsh'

# git
alias git=hub
alias gl='git log --oneline --decorate'
alias gd='git diff --word-diff'
alias gs='git status -sb'
alias gp='git pull'
alias oc='octogit'

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

# GO
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

source "$(npm root -g)/mbxcli/mapbox.sh"

# postgres.app
export PATH=/Applications/Postgres.app/Contents/MacOS/bin:$PATH
