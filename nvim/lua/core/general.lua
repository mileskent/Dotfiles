vim.cmd('syntax on')

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.api.nvim_set_keymap('', '<C-j>', '5j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<C-k>', '5k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<C-l>', '5l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<C-h>', '5h', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>h', ":nohlsearch<CR>")

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd[[set mouse=]] -- No mouse crutch!!!
vim.cmd[[set linebreak]]
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.showcmd = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.cmd('hi CursorLine cterm=bold ctermbg=black')

--vim.api.nvim_set_option('clipboard', 'unnamedplus')
