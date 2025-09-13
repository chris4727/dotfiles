#================================================
# .bash_aliases
#================================================
# This file is sourced by ~/.bashrc

# Find most common commands using: 
# TODO Get this alias working to show top commands in history
#alias hist='history | awk '{cmd[$2]++} END {for(elem in cmd) {print cmd[elem] " " elem}}' | sort -n -r | head -10'
# https://lite.duckduckgo.com/lite?kd=-1&kp=-1&q=%s

# ---  GENERAL  ---------------------------------

alias c='printf "\e[H\e[2J"'
alias ip="curl http://myip.dnsomatic.com && echo ''"
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias vi='$EDITOR'
alias file='$FILEMANAGER'
alias dus='du -d 1 -h | sort -h'
alias grep='grep --color=auto'
alias diff='diff -u --color'
alias diffdir='diff -qr'
alias now='date +"%Y-%m-%d %H:%M:%S"'
alias copy='xclip -selection clipboard'
alias paste='xclip -selection clipboard -o'

# ---  NAVIGATION  -------------------------------

alias cddot='cd /$DOTFILES && ll'
alias cdbin='cd /$SCRIPTS && ll'
alias cdmed='cd /$MEDIA && ll'
alias cdjelly='cd /$JELLYFIN && ll'

# ---  LIST  -----------------------------------

# If eza is installed, run eza, otherwise use ls
if command -v eza &> /dev/null; then
  alias ls='eza --icons --group-directories-first'
  alias la='eza -a --icons --group-directories-first'
  alias ll='eza -lAh --icons --group-directories-first --time-style=long-iso'
  # Tree with colors, icons, and show git status
  alias lt='eza --tree --icons --group-directories-first'
else
  alias ls='ls -F --color=auto --group-directories-first'
  alias la='ls -aF --color=auto --group-directories-first'
  alias ll='ls -lAhF --color=auto --group-directories-first --time-style=long-iso --ignore=lost+found'
  # Tree with colors, icons, and show git status
  alias lt='tree'
fi

# ---  BAT  --------------------------------------

# If bat is installed, use bat, otherwise use basic command
if command -v bat &> /dev/null; then
  alias cat='bat -p $@'
  alias lsblk='lsblk | bat -pl conf'
fi

# ---  FILE HANDLING  -----------------------------------

alias rcp="rsync --archive --human-readable --progress --verbose"

# ---  PACAGE MANAGER  ----------------------- 

# TODO Update for paru package manager
alias pacu='pacman -Syu && paru'			# Update
alias pacls='pacman -Qet'					# List user installed packages
alias pacs='pacman -Ss'					# Search repositories for package
#alias pacs='pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S'
alias paci='pacman -S'						# Install package
#alias pacr='pacman -Rs'					# Remove package
alias pacc='pacman -Qdtq | pacman -Rs'		# Cleanup packages

# ---  APPLICATION LAUNCHERS  -----------------------------------

alias vim='$EDITOR'
alias lock='betterlockscreen -l ~/.config/wallpaper/'	# Lock the computer
# TODO Setup script to read user unput to identify file to set as wallpaper.
# Copy image to wallpaper directory, and set as wallpaper (will need to refresh window manager).
alias wall='cp -i $HOME/.config/wallpaper/wallpaper.jpg'
alias tmx='tmux new-session -A -s Tmux'
bind '"\C-t":"tmx\n"'

# ---  FILES  -----------------------------------

alias open='xdg-open'		# Open using default program
# TODO Set i3 to play mpv and feh fullscreen
alias icat='kitty +kitten icat'	# Image cat
alias image='magick'			# Convert image with imagemagick

# ---  SYSTEM MANAGEMENT  -----------------------------------

# Show disk usage sorted and summarized
alias btm='btm --battery'

# ---  FETCH  -----------------------------------

alias neofetch='clear && neofetch'

# ---  SHUTDOWN  -----------------------------------

# TODO setup rofi powermenu script 
# See: https://github.com/ericmurphyxyz/dotfiles/blob/master/.local/bin/powermenu
alias reboot='shutdown -r now'

# ---  GREP  -----------------------------------

alias fontgrep='fc-list | grep -i --color=auto'

# ---  RIP DISKS TO FILE  -----------------------------------

# Rip audio CD to flac
alias ripcd='abcde -o flac -c $HOME/.config/abcde/abcde.conf && eject'

# ---  GIT  -----------------------------------

alias lgit='lazygit'									# Git helper
alias gits='git status -sb'							# Git status
alias gitu='git pull'								# Git pull (update)
alias gita='git add'								# Git add
alias gitg='!git rev-list --all | xargs git grep -F'	# Search commits (grep)
alias gitl='git log --oneline'						# Git log
alias gitd='git diff origin/main'					# Diff staged changes
alias gitv='git difftool -t vimdiff -y'				# Git vimdiff
alias gitc='git commit'								# Commit message in editor
alias gitp='git push -u origin main'				# Git push to origin

# ---  DOCKER  -----------------------------------

alias ldoc='lazydocker'									# Docker helper

