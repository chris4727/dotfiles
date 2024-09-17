#================================================
# .bashrc
#================================================
# This file runs every time a new terminal is opened

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ---  UTILITY FUNCTIONS  ------------------------

_source_if() { [[ -r "$1" ]] && source "$1"; }
_have() { type "$1" &>/dev/null; }

# ---  ENVIRONMENT VARIABLES  --------------------

export EDITOR="vim"
export TERM="xterm-256color"
#export MANPAGER="vim -M +MANPAGER -"

export DOCUMENTS="$HOME/Documents"
export DOTFILES=$HOME/dotfiles
export DOWNLOADS="$HOME/Downloads"
export MUSIC="$HOME/Music"
export NOTES="$HOME/Notes"
export PICTURES="$HOME/Pictures"
export TEMPLATES="$HOME/Templates"
export VIDEOS="$HOME/Videos"

export DISTRO
[[ $(uname) =~ Linux ]] && DISTRO=linux
[[ $(uname -r) =~ arch ]] && DISTRO=archlinux
#[[ $(uname -r) =~ Microsoft ]] && DISTRO=windows
# TODO add the rest

# Set Caps Lock to Esc
# TODO Does this work on Windows? Add if $DISTRO != windows if needed.
test -n "$DISPLAY" && setxkbmap -option caps:escape &>/dev/null

# --- SETTINGS  ----------------------------------

# Use vim keybindings:
set -o vi
# Prevent overwriting files with `>`. Use `>|` to overwrite.
set -o noclobber
# Ignore case when Tab completing
bind "set completion-ignore-case on"
# Bash history
export HISTSIZE=50000
export HISTFILESIZE=50000
export HISTCONTROL=ignorespace:erasedups
export HISTTIMEFORMAT="%Y%m%d%H%M%S "
# Append to the history file, don't overwrite it.
shopt -s histappend

# --- PAGER  -------------------------------------

if [[ -x /usr/bin/lesspipe ]]; then
	export LESSOPEN="| /usr/bin/lesspipe %s"
	export LESSCLOSE="/usr/bin/lesspipe %s %s"
fi

# --- DIRCOLORS  ---------------------------------

if _have dircolors; then
	if [[ -r "$HOME/.config/ls/dircolors" ]]; then
		eval "$(dircolors -b "$HOME/.config/ls/dircolors")"
	else
		eval "$(dircolors -b)"
	fi
fi

# ---  PATH  -------------------------------------
# Manage Shell Path: https://www.youtube.com/watch?v=pOr7Wt72INo
pathappend() {
# pathappend $(PWD) will add the working directory to the top of
#   the path list
	declare arg
	for arg in "$@"; do
		test -d "$arg" || continue
		PATH=${PATH//":$arg:"/:}
		PATH=${PATH/#"$arg:"/}
		PATH=${PATH/%":$arg"/}
		export PATH="${PATH:+"$PATH:"}$arg"
	done
} && export -f pathappend

pathprepend() {
	for arg in "$@"; do
		test -d "$arg" || continue
		PATH=${PATH//:"$arg:"/:}
		PATH=${PATH/#"$arg:"/}
		PATH=${PATH/%":$arg"/}
		export PATH="$arg${PATH:+":${PATH}"}"
	done
} && export -f pathprepend

# last arg will be first in path
pathprepend \
	"$HOME/.local/bin" \
	"$HOME/Scripts" \

pathappend \
	/usr/local/bin \
	/bin

# ---  ALIASES  ----------------------------------

alias c='printf "\e[H\e[2J"'
alias ip="curl http://myip.dnsomatic.com && echo ''"
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias vi='$EDITOR'
alias dus='du -d 1 -h | sort -h'
alias grep='grep --color=auto'
alias diff='diff -u --color'
alias dirdiff='diff -qr'
# Configs
alias evi='$EDITOR $HOME/.vimrc'
alias esh='$EDITOR $HOME/.bashrc'
alias etm='$EDITOR $HOME/.tmux.conf'
alias todo='$EDITOR $NOTES/TODO.md'

# GIT
alias lgit='lazygit'									# Git helper
alias gits='git status -sb'							# Git status
alias gita='git add'								# Git add
alias gitc='git commit'								# Commit message in editor
alias gitl='git log --oneline'						# Git log
alias gitu='git pull'								# Git pull (update)
alias gitp='git push -u origin main'				# Git push to origin
alias gitv='git difftool -t vimdiff -y'				# Git vimdiff
alias gitd='git diff origin/main'					# Diff staged changes
alias gitg='!git rev-list --all | xargs git grep -F'	# Search commits (grep)

# ---  PROMPT  -----------------------------------
# Define color variables
# Surround escape codes with `\[\]` to prevent overwriting prompt
blk='\[\e[30m\]' # Black 
red='\[\e[31m\]' # Red
grn='\[\e[32m\]' # Green
yel='\[\e[33m\]' # Yellow
blu='\[\e[34m\]' # Blue
prp='\[\e[35m\]' # Purple
cyn='\[\e[36m\]' # Cyan
wht='\[\e[37m\]' # White
def='\[\e[39m\]' # Default
nc='\[\e[0m\]' # No Color
#TODO add function to change hostname color depending on which host
#TODO add function to show git branch
#TODO add function to wrap prompt when it is long
#TODO add function to set prompt to red `!` after error
_ps1() {
  export PS1="$prp\u$grn@$prp\h$grn:$prp\W$grn->$nc "
}

PROMPT_COMMAND='_ps1'

# ---  BASH SHELL OPTIONS  -----------------------

# shopt is for BASHOPTS, set is for SHELLOPTS
shopt -s autocd       # change to named directory
shopt -s cdspell      # autocorrects cd misspellings
shopt -s checkwinsize # Ensure $LINES and $COLUMNS are updated
shopt -s globstar     # Allows `**` glob for searching subdirectories
shopt -s dotglob      # Allows filenames beginning with `.` to be matched
shopt -s extglob      # Allows all matching types in `pathname expansion`

# ---  COMPLETION  -------------------------------

_have pandoc && . <(pandoc --bash-completion)

# --- PERSONALIZED CONFIGURATIONS  ---------------

#_source_if "$HOME/.config/bash/aliases.local"
_source_if "$HOME/.bash_aliases"
_source_if "$HOME/.bash_personal"
_source_if "$HOME/.bash_private"
_source_if "$HOME/.bash_work"

# ---  COMPLETION  -------------------------------

eval "$(pandoc --bash-completion)"

# ---  BINDINGS  ---------------------------------

#bind '"\C-v":"vim\n"'

