require('core.colors.raz').setup()

vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.conceallevel = 1

vim.o.expandtab = false  
vim.o.tabstop = 4 
vim.o.softtabstop = 4 
vim.o.shiftwidth = 4 

vim.g.user42 = 'razaccar'
vim.g.mail42 = 'razaccar@student.42lausanne.ch'

vim.opt.tags = { './tags', 'tags' }

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<Leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<C-w>', ':w<CR>')
vim.keymap.set('n', '<C-q>', ':bd<CR>')
vim.keymap.set('n', '<C-n>', ':Explore<CR>')
