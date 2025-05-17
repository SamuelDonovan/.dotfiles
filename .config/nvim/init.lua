require("config.lazy")

-- ============================================================
-- => General 
-- ============================================================

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.incsearch = true
-- Ignore case when searching 
vim.opt.ignorecase = true
-- When searching try to be smart about cases 
vim.opt.smartcase = true
-- Highlight search results 
vim.opt.hlsearch = true
-- Makes search act like search in modern browsers 
vim.opt.incsearch = true

vim.opt.expandtab = true
vim.opt.shiftwidth=4
vim.opt.tabstop=4

-- Set 7 lines to the cursor - when moving vertically using j/k
vim.opt.scrolloff=8

-- Always show current position
vim.opt.ruler = true

-- ============================================================
-- => Text, tab and indent related
-- ============================================================

-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Be smart when using tabs
vim.opt.smarttab = true

-- 1 tab == 4 spaces
vim.opt.shiftwidth=4
vim.opt.tabstop=4

-- Auto indent
vim.opt.ai = true
-- Smart indent
vim.opt.si = true
-- Wrap lines
vim.opt.wrap = true

-- ============================================================
-- => Language Server Protocols (LSPs) 
-- ============================================================

vim.lsp.enable('pyright')

-- ============================================================
-- => Remaps
-- ============================================================

-- Leader is the space, no other answer is correct
vim.g.mapleader = " "

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.keymap.set('n', '<leader>h', '<C-w>h', {noremap = true})
vim.keymap.set('n', '<leader>j', '<C-w>j', {noremap = true})
vim.keymap.set('n', '<leader>k', '<C-w>k', {noremap = true})
vim.keymap.set('n', '<leader>l', '<C-w>l', {noremap = true})

-- Open [L]ast file 
vim.keymap.set('n', '<leader>l', '<C-^>', {noremap = true})

-- Open file browser 
vim.keymap.set( 'n', '<leader>e', '<Esc>:Lex<cr>:vertical resize 30<cr>', {noremap = true})

-- Open undotree
vim.keymap.set( 'n', '<leader>u', '<Esc>:UndotreeToggle<cr>:UndotreeFocus<cr>', {noremap = true})


