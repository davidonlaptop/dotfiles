# ~/.bashrc: executed by bash(1) for non-login shells.
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
        # Shell is non-interactive.  Be done now!
        return
fi

#echo -e "`gdate +"%T.%N"` \t Configuring shell..."
# Load secret config invisible from source control
[[ -f ~/.bashrc.secrets ]] && . ~/.bashrc.secrets


# Determine the directory of this script (so we can run the script anywhere)
DOTFILES_DIR=$(dirname $(realpath "${BASH_SOURCE[0]}"))



##########################################################
# Bash settings
##########################################################
shopt -s nocaseglob  # Case-insensitive globbing (used in pathname expansion)
shopt -s cdspell     # Autocorrect typos in path names when using `cd`

shopt -s no_empty_cmd_completion  # No Tab autocomplete on empty line

# Recursive globbing with "**" (requires bash 4; OSX uses bash 3)
if [ ${BASH_VERSINFO[0]} -ge 4 ]; then
    shopt -s globstar
fi



##########################################################
# Variables
##########################################################
export EDITOR="vim"    # Default editor
export CLICOLOR=1                  # Colored ls output
export GREP_OPTIONS='--color=auto' # Colored Grep output
export HISTCONTROL=ignoredups:erasedups  # Avoid duplicate in bash history



##########################################################
# Paths
##########################################################
# Append/Prepend a directory (if it exits) to the path
append() {
    [ -d $1 ] && PATH="$1:${PATH}"
}
prepend() {
    [ -d $1 ] && PATH="$1:${PATH}"
}

prepend "$HOME/workspace/ticksmith/internalScripts"
prepend "$HOME/workspace/ticksmith/devops-tools/bin"
prepend "/usr/local/opt/coreutils/libexec/gnubin"
prepend "/usr/local/opt/python/libexec/bin"
prepend "$HOME/bin"

# Remove duplicates (preserving prepended items)
# Source: http://unix.stackexchange.com/a/40755
export PATH=`echo -n $PATH | awk -v RS=: '{ if (!arr[$0]++) {printf("%s%s",!ln++?"":":",$0)}}'`



##########################################################
# Aliases
##########################################################
alias ls='ls --color -h --group-directories-first'
alias l="ls -F"       # Compact view
alias la="ls -AF"     # Compact view, show hidden
alias ll='ls -al'     # Long format, show hidden
alias ld="ls -ld */"  # Long format, show only directories
alias lt='tree -C --dirsfirst'
alias lt1='tree -C --dirsfirst -L 1'
alias lt2='tree -C --dirsfirst -L 2'
alias lt3='tree -C --dirsfirst -L 3'
alias lt4='tree -C --dirsfirst -L 4'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias mkdir='mkdir -p'

alias cat=`which vimcat`
alias less=`which vimpager` 


#echo -e "`gdate +"%T.%N"` \t Configuring prompt... DOTFILES_DIR=$DOTFILES_DIR"
source "$DOTFILES_DIR/liquidprompt/liquidprompt"


# Clean up
unset SCRIPT_PATH DOTFILES_DIR DOTFILE OS
unset prepend append
#echo -e "`gdate +"%T.%N"` \t Shell ready."
