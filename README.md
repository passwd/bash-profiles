# Bash Profile Settings

These files will make your bash profile look amazing and provide some useful commands.

There are two display options, white/green and red/white. Any custom bash aliases or includes should be moved to a new file ".bash_custom" to prevent them from being overwritten.

## New Commands

    # Show a small reminder about some new commands
    $ remindme
    ctrl+a : go to beginning of line
    ctrl+e : go to end of line
    ctrl+u : delete to beginning of line
    ctrl+k : delete to end of line
    -----------------------------------------------------
    ls commands
    ll : ls -alF
    la : ls -A
    l : ls -CF
    lh : ls -alh
    dir : ls -lal
    all : ls -lGhA
    cddir: cd "$1"; dir;
    cdall: cd "$1"; all;
    -----------------------------------------------------
    other commands
    bye: logout
    ..: cd ..
    ...: cd ../..
    glog: better git log (reguires .gitconfig)


## New Features

You can now search your bash history. Just start typing the command and hit the up arrow. This requires a .bash_history file that is readable by your user.

The current path and git repo are displayed in a command separator. See example below:

    ––––––––––––––––––––––––––[ ~/Sites/my_repo [production] ]––––––––––––––––––––––––––
    kklein@nacho-console » sudo dd if=/dev/urandom of=/dev/sd0 bs=1M

## Install

    # warning, this will overwrite your current settings
    cp -Rv ./white_green/ ~/
    source ~/.bash_profile

    # update git config file
    vim ~/.gitconfig