export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -c"                  # $EDITOR opens in terminal
export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI mode


alias edit="$EDITOR"
alias vim="nvim"

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1='\[\033[0;31m\]\u \[\033[1;36m\]\w $(parse_git_branch) \n\[\033[1;32m\]> \[\033[00m\]'
