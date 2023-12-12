vim.cmd('syntax on')

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.api.nvim_set_keymap('n', '<C-j>', ':<C-u>execute "normal! 5j"<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':<C-u>execute "normal! 5k"<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-j>', '<Esc>:<C-u>execute "normal! 5j"<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<Esc>:<C-u>execute "normal! 5k"<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-j>', '<Esc>:<C-u>execute "normal! 5j"<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-k>', '<Esc>:<C-u>execute "normal! 5k"<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>h', ":nohlsearch<CR>")

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd[[set mouse=]] -- No mouse crutch!!!
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.showcmd = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.cmd('hi CursorLine cterm=bold ctermbg=black')

