alias bye="logout"
alias ..="cd .."
alias ...="cd ../.."

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lh='ls -alh'
alias dir="ls -lal"
alias all="ls -lGhA"

alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

cddir () { cd "$1"; dir; }
cdall () { cd "$1"; all; }

md ()
{
    if [ -n "$1" ];
    then
        mkdir -p "$1"; cd "$1";
    else
        echo "No directory specified"
    fi
}

remindme ()
{
    echo "ctrl+a : go to beginning of line"
    echo "ctrl+e : go to end of line"
    echo "ctrl+u : delete to beginning of line"
    echo "ctrl+k : delete to end of line"

    echo '-----------------------------------------------------'
    echo 'ls commands'
    echo "ll : ls -alF"
    echo "la : ls -A"
    echo "l : ls -CF"
    echo "lh : ls -alh"
    echo "dir : ls -lal"
    echo "all : ls -lGhA"
    echo "cddir: cd \"\$1\"; dir;"
    echo "cdall: cd \"\$1\"; all;"

    echo '-----------------------------------------------------'
    echo "other commands"
    echo "bye: logout"
    echo "..: cd .."
    echo "...: cd ../.."

    echo "glog: better git log (reguires .gitconfig)"
    echo "md: create dir and cd into it"
}
