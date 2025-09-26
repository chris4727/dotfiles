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
- *Open new browser window* = `Super+b`

## Terminal

> [!NOTE]
> Tabs in the terminal are generally used to contain Tmux sessions when on different servers. Typically tab 1 is the current computer, and additional tabs are servers connected through SSH. This prevents having to have nested Tmux sessions.

- *New terminal tab* = `Ctrl+Shift+t`
- *Move to left tab* = `Ctrl+Shift+left`
- *Move to right tab* = `Ctrl+Shift+right`

## Tmux

- *Alias to create or attach to Tmux session* = `$ tmx` or `Ctrl+t`
- *Leader key* = `Ctrl+Space`
- *List sessions* = `Leader s`
- *Create new window and prompt for name* = `Leader w`
- *Rename window* = `Leader r`
- *Move to window <num>* = `Leader <num>`
- *Close window* = `Alt+q`

- *Close pane* = `Alt+x`
- *Split pane vertically (right)* = `Leader v`
- *Split pane horizontally (down)* = `Leader d`
- *Zoom pane* = `Leader z`
- *Move to left pane* = `Alt+h` or `Alt+Left`
- *Move to lower pane* = `Alt+j` or `Alt+Down`
- *Move to upper pane* = `Alt+k` or `Alt+Up`
- *Move to right pane* = `Alt+l` or `Alt+Right`

- *Open Lazygit in popup* = `Alt+g`
- *Open new terminal in popup* = `Alt+t`

## Vim

- *Leader key* = `Space`
- *Local leader* = `;`

### Vim Normal Mode

- *Show file directory* = `-`
- *Source config* = `Leader c`

- *Split vertically (right)* = `Leader v`
- *Split horizontally (down)* = `Leader d`
- Swap between Vim split panes = `Leader w`
- *Move to left pane* = `Alt+h` or `Alt+Left`[^1]
- *Move to lower pane* = `Alt+j` or `Alt+Down`[^1]
- *Move to upper pane* = `Alt+k` or `Alt+Up`[^1]
- *Move to right pane* = `Alt+l` or `Alt+Right`[^1]
 
- *F4* = `Toggle Line numbers`
- *F7* = `Toggle Spellcheck`
- *F8* = `Toggle visible whitespace`
- *F9* = `Insert datestamp at cursor`
- *F11* = `Toggle reading mode`

- Format Markdown table under cursor = `Ctrl+t`
- Tabularize by character = `Leader t <char>`

- **FZF**: Fuzzy find and open a file in directory* = `Ctrl+f`
- **FZF**:Fuzzy find git commits = `Ctrl+g`
 
### Vim Insert Mode

- **FZF**: Fuzzy find in current file = `Ctrl+f`

### Vim Visual Mode

- *Yank visually selected into system clipboard* = `Ctrl+y`

[^1]: Since Vim splits are only used on machines without Tmux installed, navigating Vim splits uses the same bindings as Tmux panes. The bindings are only applied in Vim if not running in a Tmux session.
 
