#================================================
# .aliases
#================================================
# This file is sourced by ~/.bashrc

# TODO Move these to either standalone scripts, or ~/.bash_personal

# Find most common commands using: 
# TODO Get this alias working to show top commands in history
#alias hist='history | awk '{cmd[$2]++} END {for(elem in cmd) {print cmd[elem] " " elem}}' | sort -n -r | head -10'
# https://lite.duckduckgo.com/lite?kd=-1&kp=-1&q=%s
alias today='date +"%Y-%m-%d %H:%M:%S"'

# List
#------------------------------------------------
alias ls='ls -F --color=auto --group-directories-first'
alias la='ls -aF --color=auto --group-directories-first'
alias ll='ls -lAhF --color=auto --group-directories-first --time-style=long-iso --ignore=lost+found'
# Tree with colors, icons, and show git status
alias lt='tree'
alias lr='ls -AFR --color=auto --group-directories-first --time-style=long-iso --ignore=lost+found'
#alias ls='eza --icons --git --group-directories-first'
#alias la='eza -a --icons --git --group-directories-first'
#alias ll='eza -lah --icons --git --group-directories-first'
## Tree with colors, icons, and show git status
#alias lt='eza --tree --level=2 --icons --git'
#alias lt3='eza --tree --level=3 --icons --git'

# File handling
#------------------------------------------------
alias rcp="rsync --archive --human-readable --progress --verbose"

# Bookmarks for common files/directories
#------------------------------------------------
alias cdcf='cd $HOME/.config/ && ll'
alias cddb='cd $HOME/Dropbox/ && ll'
alias cddc='cd $HOME/Documents/ && ll'
alias cddn='cd $HOME/Downloads/ && ll'
alias cdpc='cd $HOME/Pictures/ && ll'
alias cdvd='cd $HOME/Videos/ && ll'
alias cdrp='cd $HOME/Repos/ && ll'
alias cdsh='cd $HOME/.local/bin/ && ll'
alias cdsn='cd $HOME/.vim/UltiSnips/ && ll'
alias cdwi='cd $HOME/Wiki/ && ll'
alias cdn='cd $HOME/Notes/ && ll'
alias cdtr='cd $HOME/.local/share/Trash/files/ && ll'

# Edit config files
#------------------------------------------------
alias ea='$EDITOR $HOME/.config/bash/aliases'
alias ewi='cd $HOME/Wiki/ && $EDITOR index.wiki' # cd to wiki and open in editor.

# ---  PACAGE MANAGER  ----------------------- 
# TODO Update for paru package manager
alias pacu='pacman -Syu && paru'			# Update
alias pacls='pacman -Qet'					# List user installed packages
alias pacs='pacman -Ss'					# Search repositories for package
#alias pacs='pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S'
alias paci='pacman -S'						# Install package
#alias pacr='pacman -Rs'					# Remove package
alias pacc='pacman -Qdtq | pacman -Rs'		# Cleanup packages

# Application launchers
#------------------------------------------------
alias vim='$EDITOR'
alias lock='betterlockscreen -l ~/.config/wallpaper/'	# Lock the computer
# TODO Setup script to read user unput to identify file to set as wallpaper.
# Copy image to wallpaper directory, and set as wallpaper (will need to refresh window manager).
alias wall='cp -i $HOME/.config/wallpaper/wallpaper.jpg'

# Files
#------------------------------------------------
alias open='xdg-open'		# Open using default program
# TODO Set i3 to play mpv and feh fullscreen
alias icat='kitty +kitten icat'	# Image cat
alias image='magick'			# Convert image with imagemagick

# System management
#------------------------------------------------

# Show disk usage sorted and summarized
alias btm='btm --battery'

# Fetch
#------------------------------------------------
alias neofetch='clear && neofetch'

# Shutdown
#------------------------------------------------
# TODO setup rofi powermenu script 
# See: https://github.com/ericmurphyxyz/dotfiles/blob/master/.local/bin/powermenu
alias reboot='shutdown -r now'

# Grep
#------------------------------------------------
alias fontgrep='fc-list | grep -i --color=auto'

# Rip disks to file
#------------------------------------------------
# Rip audio CD to flac
alias abcde='abcde -o flac -c $HOME/.config/abcde/abcde.conf'
# Rip audiobook CD to voice optimized, low bitrate opus
alias ripbook='abcde -o opus -c $HOME/.config/abcde/abcdebook.conf'

# Git
#------------------------------------------------
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

# Git config bare repo ~/.cfg
#------------------------------------------------
alias ldot='lazygit --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dots='dot status -sb'							# Git status
alias dotu='dot pull'								# Git pull (update)
alias dota='dot add'									# Git add
alias dotl='dot log --oneline'						# Git log
alias dotd='dot diff origin/main'					# Diff staged changes
alias dotv='dot difftool -t vimdiff -y'				# Git vimdiff
alias dotc='dot commit'								# Commit message in editor
alias dotp='dot push -u origin main'					# Git push to origin

# Taskwarrior
#------------------------------------------------
alias t='task'				# Taskwarrior
alias tv='vit'				# Vit TUI for taskwarrior
alias tad='task add'		# Add new task
alias tsu='task summary'	# Add new task
alias tcal='task calendar'	# View task calendar

# Pandoc
#------------------------------------------------
# When using this alias, input `pandocmd input.md -o output.pdf
alias pandocmd='pandoc -f markdown -t pdf --pdf-engine=lualatex' 

# yt download
#------------------------------------------------
#List available codecs
alias ytls='yt-dlp -F'
# Extract audio, m4a best quality
alias yta='yt-dlp -x --audio-format m4a --audio-quality 0 --embed-thumbnail -P $HOME/Music/ytdlp'
# Look into possible codecs. One for small and efficient, one for best. 
# Downsample highest resolution to 1080p. 
# Look at '--remux-video' '--sponsorblock-remove'
#alias ytv-best='yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 '
