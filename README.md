# Dotfiles

Personal dotfile repository.


# Usage

## General keybind scheme

- `Super`: Window manager bindings
- `Alt`: Tmux bindings
- `Ctrl`: Individual application bindings
- `Shift`: Modifies all of the above

## Window manager

- *Move to workspace <num>* = `Super+<num>`
- *Split vertically (right)* = `Super+v`
- *Split horizontally (down)* = `Super+d`
- *Move to right window* = `Super+l` or `Super+Right`
- *Move to left window* = `Super+h` or `Super+Left`
- *Move to lower window* = `Super+j` or `Super+Down`
- *Move to upper window* = `Super+k` or `Super+Up`
- *Open new terminal window* = `Super+Enter`

## Terminal

Tabs in the terminal are generally used to contain Tmux sessions when on different servers. Typically tab 1 is the current computer, and additional tabs are servers connected through SSH. This prevents having to have nested Tmux sessions.

- *New terminal tab* = `Ctrl+Shift+t`
- *Move to left tab* = `Ctrl+Shift+left`
- *Move to right tab* = `Ctrl+Shift+right`

## Tmux

- *Alias to create or attach to Tmux session* = `tmx` or `Ctrl+t`
- *Leader key* = `Ctrl+Space`
- *List sessions* = `Leader s`
- *Create new window and prompt for name* = `Leader w`
- *Rename window* = `Leader r`
- *Move to window <num>* = `Leader <num>`
- *Split pane vertically (right)* = `Leader v`
- *Split pane horizontally (down)* = `Leader d`
- *Zoom pane* = `Leader z`
- *Move to right pane* = `Alt+l` or `Alt+Right`
- *Move to left pane* = `Alt+h` or `Alt+Left`
- *Move to lower pane* = `Alt+j` or `Alt+Down`
- *Move to upper pane* = `Alt+k` or `Alt+Up`

## Vim

- *Leader key* = `Space`
- *Local leader* = `;`
- *Toggle line numbers* = `Leader n`
- *Toggle relative line numbers* = `Leader r`
- *Source config* = `Leader c`
- *F4* = `Toggle Line numbers`
- *F7* = `Toggle Spellcheck`
- *F8* = `Toggle visible whitespace`
- *F9* = `Insert datestamp at cursor`
- *F11* = `Toggle reading mode`
- *Yank visually selected into system clipboard* = `Ctrl+y`
- *Insert mode: Fuzzy find in current file* = `Ctrl+f`
- *Normal mode: Fuzzy find and open a file in directory* = `Ctrl+f`
- *Fuzzy find git commits* = `Ctrl+f`

