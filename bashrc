# ~/.bashrc: executed by bash(1) for non-login shells.
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


#echo -e "`gdate +"%T.%N"` \t Configuring shell..."
# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
        # Shell is non-interactive.  Be done now!
        return
fi


# Load secret config invisible from source control
[[ -f ~/.bashrc.secrets ]] && . ~/.bashrc.secrets


# Determine the directory of this script (so we can run the script anywhere)
SCRIPT_PATH=${BASH_SOURCE[0]}
if [[ -L $SCRIPT_PATH ]]; then
  SCRIPT_PATH=$( readlink $SCRIPT_PATH )
fi
DOTFILES_DIR=$( dirname $SCRIPT_PATH )


# Bootstrap environment
for DOTFILE in "$DOTFILES_DIR"/system/{functions,paths,exports,aliases,completions,prompts}
do
    [ -f "$DOTFILE" ] && source "$DOTFILE"
done


# Load OS specific configurations
if [ "$(uname -s)" = "Darwin" ]; then
    OS="OSX"
    for DOTFILE in "$DOTFILES_DIR"/system/{functions,paths,exports,aliases,completions,prompts}.osx
    do
        [ -f "$DOTFILE" ] && source "$DOTFILE"
    done
else
    OS=`uname -s`
fi
#echo -e "`gdate +"%T.%N"` \t Shell ready."


# Clean up
unset SCRIPT_PATH DOTFILES_DIR DOTFILE OS
