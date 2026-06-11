local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin') ---- Add plugins below here

Plug('olimorris/onedarkpro.nvim')
Plug('nvim-tree/nvim-tree.lua')
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-lualine/lualine.nvim')

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

vim.call('plug#end') ------ Add plugins above here

home=os.getenv("HOME")
package.path = home .. "/.config/nvim/?.lua;" .. package.path

require"common"
require"theme"
require"vimtree"
require"lualine"
require"cmp-lsp"
require"mason-config"
