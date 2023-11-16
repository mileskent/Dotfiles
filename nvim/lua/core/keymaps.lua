vim.cmd('syntax on')

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>h', ":nohlsearch<CR>")

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.opt.mouse = 'a'
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.showcmd = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.cmd('hi CursorLine cterm=bold ctermbg=black')
