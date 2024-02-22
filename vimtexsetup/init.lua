-- PACKER
require('plugins')

-- GENERAL
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
vim.cmd[[set breakindent]]
vim.cmd[[set formatoptions=1]]
vim.cmd[[set lbr]]
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.showcmd = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.cmd('hi CursorLine cterm=bold ctermbg=black')


-- VIMTEX
vim.cmd[[
filetype plugin indent on
let g:vimtex_view_method = 'zathura'
let maplocalleader = "\\"
]]

-- LUASNIPS
vim.cmd[[
" Use Tab to expand and jump through snippets
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]]

-- Load snippets from ~/.config/nvim/LuaSnip/
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})

-- Somewhere in your Neovim startup, e.g. init.lua
require("luasnip").config.set_config({ -- Setting LuaSnip config

  -- Enable autotriggered snippets
  enable_autosnippets = true,

  -- Use Tab (or some other key if you prefer) to trigger visual selection
  store_selection_keys = "<Tab>",
})



