require("thc.remap")

vim.g.mapleader = ' '

vim.g.nocompatible = true
vim.g.netrw_banner = false
vim.g.netrw_keepdir = false

vim.o.swapfile = false

vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.g.term_gui_colors = true

vim.o.expandtab = true
vim.o.autoindent = true
vim.o.lazyredraw = true
vim.o.updatetime = 50

vim.o.incsearch = true
vim.o.hlsearch = false
vim.o.wildmenu = true
vim.o.ignorecase = true
vim.o.showcmd = true
vim.o.showmode = true
vim.o.showmatch = true

vim.o.cursorline = false
vim.o.shiftwidth = 4
vim.o.tabstop = 4

vim.cmd([[
  filetype on
  filetype plugin on
  filetype indent on
  syntax on
]])
