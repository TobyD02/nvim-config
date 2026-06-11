-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- display line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.statuscolumn = "%s %{v:relnum} %{v:lnum} "

-- enable mouse support
vim.g.mouse = 'a'

vim.opt.encoding = "utf-8"

-- disable swap file
vim.opt.swapfile = false

-- set tab and indentation settings
vim.opt.scrolloff = 7
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true

vim.opt.fileformat = "unix"
