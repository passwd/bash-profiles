shopt -s checkwinsize # update LINES and COLUMNS after each command
shopt -s histappend # append history instead of overwriting

export PATH=/usr/local/bin:$PATH

export HISTSIZE=10000 # set history size
export LSCOLORS="HxxxxxxxxxxxxxxxxxHxHx"

if [ -f ~/.bash_prompt ];
then
    . ~/.bash_prompt

    customPromptCommand ()
    {
        history -a # write previous history line to disk
        workingDirectoryCenteredWithinFullWindowWidthLine '$txtwht_$leftln_$thecwd_$rigtln_$txtpln_'
    }

    PROMPT_COMMAND=customPromptCommand

    setCustomPrompt '$wintst_$fulhst_$wintnd_$txtred_$usrhst_$txtpln_$aspace_$txtbld_$prompt_$txtpln_$aspace_'

fi

if [ -f ~/.bash_aliases ];
then
    . ~/.bash_aliases
fi

# Loads a custom config file
if [ -f ~/.bash_custom ];
then
    . ~/.bash_custom
fi
