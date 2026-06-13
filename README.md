# NVIM Setup (Toby Dixon)
This uses vimplug. A helper script for unix (only tested on ubuntu) has been added for installation called `install_vimplug.sh` however youmay need to research your own method for installation.

## Installation
Simply add clone this repo to `~/.config/nvim` (The contents of the repo are what go into `nvim/`, this folder itself shouldn't be a subdirectory.

***NOTE*** - you will need a nerdfont. Any from [here](https://www.nerdfonts.com/font-downloads) should work.
    - Once installed, make sure you configure your terminal to use this font.

***NOTE*** - You may also want to choose a better terminal 
    - [kitty](https://sw.kovidgoyal.net/kitty/binary/)
    - [wezterm](https://wezterm.org/installation.html)

### Ubuntu
```shell
fc-list # Use this to find where your fonts are installed
unzip YourFont.zip -d /path/to/fonts
fc-cache -fv
```
- Make sure to close all terminal windows after changing fonts, otherwise it may look weird

## Adding plugins
1. Create your new lua script, or add to another.
    - If adding a new script, make sure to add `dofile("your-file.lua")` or `require"your-file"` at the bottom of `init.lua`
2. In `init.lua`, call `Plug('some/plugin.nvim')` for all required plugins for your new config.
3. Finally, from inside vim, run `:PlugInstall`
    - If removing/replacing plugins, run `:PlugClean`
4. Reboot nvim and you should see your changes

## Layout
- `init.lua`
    - Installs plugins, and orchestrates subscripts for other config
- `theme.lua`
    - Sets theme
- `common.lua`
    - Configures common nvim config - i.e. line numbers, tab widths, etc...

## Keybinds
- Open tree `\e`
- Shift Window Focus `Ctrl + w` -> `h` (left), `l` (right), `j` (down), `k` (right)
    - Arrow keys work also following the `Ctrl + w`
- `\d` when hovering an error explains itself
- `gd` when hovering a function goes to definition
- `gr` when hovering a function gets a list of references
- `Shift k` when hovering a function shows its docs
- `Ctrl o` goes back (i.e. to previous place after `gd` or `gr`
- `Ctrl i` goes forward (i.e. after `Ctrl o`)
- `Ctrl /` comments selected lines
- In Normal Mode:
    - `TAB` -> next tab along
    - `Shift + TAB` -> previous tab along

## LSP
- Run the command `:Mason` to see available LSP, find the name of the one you want
- Run `:MasonInstall <your-lsp-here>` to install
    - i.e. `:MasonInstall pyright`
- Alternatively, navigate to `./mason-config.lua` and add your lsp in there:
```lua
require("mason-lspconfig").setup({
	ensure_installed = {
		"pyright",
        -- Add your lsp here to make sure its installed
	}
})
```
- Then  in cmp-lsp, at the bottom add:
```lua
lsp("intelephense")
```

