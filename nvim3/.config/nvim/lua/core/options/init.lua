local o = vim.o
local opt = vim.opt
local wo = vim.wo
local bo = vim.bo

vim.cmd('filetype plugin indent on')
o.shortmess = o.shortmess .. 'c'
o.hidden = true
o.whichwrap = 'b,s,<,>,[,],h,l'
o.pumheight = 10
o.fileencoding = 'utf-8'
o.cmdheight = 2
o.splitbelow = true
o.splitright = true
opt.termguicolors = true
o.conceallevel = 0
o.showtabline = 2
o.showmode = false
o.backup = false
o.writebackup = false
o.updatetime = 300
o.timeoutlen = 100
o.clipboard = "unnamedplus"
o.hlsearch = false
o.ignorecase = true
o.scrolloff = 3
o.sidescrolloff = 5
o.mouse = "a"
wo.wrap = true
wo.number = true
o.cursorline = true
wo.signcolumn = "yes"
o.tabstop = 2
bo.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
bo.shiftwidth = 2
o.autoindent = true
bo.autoindent = true
o.expandtab = true
bo.expandtab = true

-- colorescheme
vim.cmd('colorscheme iceberg')
