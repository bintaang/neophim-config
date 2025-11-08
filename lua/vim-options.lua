-- ✦────────────────── VARIABLES FOR CONFIGURING ──────────────────✦

local map = vim.keymap.set
local opt = { noremap = true, silent = true }

-- ✦────────────────── VARIABLES FOR CONFIGURING ──────────────────✦





-- ✦────────────────── BUFFER KEYMAPS ──────────────────✦

-- Splitting Windows
map('n', '<C-]>', '<cmd>vs<CR>', opt)    --Split vertically
map('n', '<C-;>', '<cmd>split<CR>', opt) -- Split horizontally

-- Move windows

map('n', '<leader>j', '<cmd>wincmd j<CR>', opt) -- Move Beneath Window

map('n', '<leader>k', '<cmd>wincmd k<CR>', opt) -- Move Above Window

map('n', '<leader>h', '<cmd>wincmd h<CR>', opt) -- Move Left Window

map('n', '<leader>l', '<cmd>wincmd l<CR>', opt) -- Move Right Window


-- Closing windows


map('n', '<leader>w', '<cmd>close<CR>', opt) -- Close Current Window

map('n', '<leader>]', '<cmd>+quit<CR>', opt) -- Close Next Window

map('n', '<leader>[', '<cmd>-quit<CR>', opt) -- Close Previous Window

map('n', '<leader>a', '<cmd>only<CR>', opt)  -- Close all window except the current active window

-- ✦────────────────── BUFFER KEYMAPS ──────────────────✦













vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.g.mapleader = " "
