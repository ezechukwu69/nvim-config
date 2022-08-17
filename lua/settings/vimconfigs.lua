vim.g.mapleader = " "

local set = vim.o
vim.cmd[[
filetype on
filetype plugin on
filetype indent on
]]

set.relativenumber = true
set.number = true
set.expandtab = true
set.tabstop = 4
set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 8
set.fileencoding = 'utf-8'
set.termguicolors = true
set.cursorline = true
set.hidden = true
vim.cmd[[let g:dart_format_on_save = 1]]
