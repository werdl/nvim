vim.opt.clipboard = 'unnamedplus' -- system clipboard
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.mouse = 'a' -- allow mouse usage

vim.opt.tabstop = 4 -- visual spaces per \t
vim.opt.softtabstop = 4 -- spaces per \t when editing
vim.opt.shiftwidth = 4 -- 4 spaces on Tab
vim.opt.expandtab = true -- tabs = spaces

vim.opt.number = true -- absolute number
vim.opt.relativenumber = true -- relative number to left side
vim.opt.cursorline = true -- highlight line underneath box
vim.opt.splitbelow = true -- new vertical splits on bottom
vim.opt.splitright = true -- new horizontal splits right
vim.opt.termguicolors = true -- 24-bit RGB color
vim.opt.showmode = true -- show mode

vim.opt.incsearch = true -- search as chars are entered
vim.opt.hlsearch = true -- highlight matches
vim.opt.ignorecase = true -- ignore case
vim.opt.smartcase = true -- but make case sensitive if an uppercase entered
