local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin') ---- Add plugins below here

-- THEMES
Plug'olimorris/onedarkpro.nvim'
Plug'rebelot/kanagawa.nvim'
Plug'ellisonleao/gruvbox.nvim'
Plug'AlexvZyl/nordic.nvim'
---

Plug'nvim-tree/nvim-tree.lua'
Plug'nvim-tree/nvim-web-devicons'
Plug'nvim-lualine/lualine.nvim'

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

--- CMP/LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

-- VIMSNIP
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

--- Mason
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

--- Rainbow Indents
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'TheGLander/indent-rainbowline.nvim'

-- Rainbow Brackets
Plug 'HiPhish/rainbow-delimiters.nvim'

-- Autopairs 
Plug "windwp/nvim-autopairs"

--- Barbar
Plug 'romgrk/barbar.nvim'

--- Toggleterm
Plug 'akinsho/toggleterm.nvim'

-- Telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'

vim.call('plug#end') ------ Add plugins above here

home=os.getenv("HOME")
package.path = home .. "/.config/nvim/?.lua;" .. package.path

require"common"
require"theme"
require"vimtree"
require"lualine-config"
require"cmp-lsp"
require"mason-config"
require"rainbow-indent"
require"rainbow-bracket"
require"autopairs"
require"quick-comment"
require"barbar-config"
require"toggleterm-config"
require"telescope-config"
