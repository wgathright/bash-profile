echo "FROM BASH_PROFILE"

PS1="$(tput setaf 14)\u$(tput sgr0)@$(tput setaf 9)\h$(tput sgr0)[$(tput setaf 10)\w$(tput sgr0)]$ ";
export PS1;

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=2000
HISTFILESIZE=3000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize




# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -l'




if command -v neofetch &> /dev/null
then
	neofetch
fi
