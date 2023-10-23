# init.lua
Super simple [neovim](https://github.com/neovim/neovim) configuration

## Requirements
- python3 (for coq)
- sqlite (for coq)
- ripgrep (for telescope)

## Plugins
- [packer (plugin manager)](https://github.com/wbthomason/packer.nvim)
- [gruvbox (theme)](https://github.com/ellisonleao/gruvbox.nvim)
- [vim-fugitive (git tui)](https://github.com/tpope/vim-fugitive)
- [telescope (file searcher)](https://github.com/nvim-telescope/telescope.nvim)
- [treesitter (parser)](https://github.com/nvim-treesitter/nvim-treesitter)
- [coq_nvim (autocompletion)](https://github.com/ms-jpq/coq_nvim)

## Keybindings
```
leader        = space
leader+tab    = open netrw
leader+g      = open git tui
leader+e      = open error diagnistic

tab           = open telescope (git or full search automaticly)
shift+tab     = open telescope full search
leader+fs     = open telescope grep search (ripgrep)

ctrl+f        = leave insert mode
```
other keybindings are default.
