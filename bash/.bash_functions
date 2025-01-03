#================================================
# .bash_functions
#================================================
# This file is sourced by ~/.bashrc

# TODO Move these to standalone scripts

# ---  FUNCTIONS  --------------------------------

# Change directories with fzf
fcd() {
cd $HOME && cd "$(find * -type d | fzf --preview="tree -L 1 {}" --bind="space:toggle-preview" --preview-window=:hidden)" && clear && ls -lah
}

# Open files with fzf
fopen() {
file="$(find -type f | fzf --preview="head -$LINES {}")"
if [ -n "$file" ]; then
    mimetype="$(xdg-mime query filetype $file)"
    default="$(xdg-mime query default $mimetype)"
    if [[ "$default" == "vim.desktop" ]]; then
        vim "$file"
    else
        &>/dev/null xdg-open "$file" & disown
    fi
fi
}

# Find local scripts with fzf
# TODO Have fzf put the name of the script in the command Prompt
#      to allow it to be run. Currently, just echoes name of
#      script and current dir path to stdout.
fsh() {
cd $HOME/.local/bin/
find -type f | fzf --preview="head -$LINES {}"
cd -
}

# Search pacman repo with fzf. 
# <space> toggles preview of selected package
# Tab selects and allows additional selections
# Enter installs selected packages
fpac() {
sudo pacman -S $(pacman -Ssq | fzf --multi --preview="pacman -Si {}" --preview-window=:hidden --bind=space:toggle-preview)
}

pacrm() {
# Lists all user-installed packages '-Qet'. '-q' forces plain text.
pacman -Qetq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rs
}

# ---  BINDINGS  ---------------------------------

bind '"\C-f":"fcd\n"'
bind '"\C-o":"fopen\n"'
