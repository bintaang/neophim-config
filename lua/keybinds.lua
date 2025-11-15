-- ✦────────────────── VARIABLES FOR CONFIGURING ──────────────────✦

local map = vim.keymap.set
local opt = { noremap = true, silent = true }

-- ✦────────────────── VARIABLES FOR CONFIGURING ──────────────────✦





-- ✦────────────────── BUFFER KEYMAPS ──────────────────✦

-- Splitting Windows
map('n', '<C-]>', '<cmd>vs<CR>', opt)    --Split vertically
map('n', '<C-;>', '<cmd>split<CR>', opt) -- Split horizontally

-- Move windows

map('n', '<leader><Down>', '<cmd>wincmd j<CR>', opt)  -- Move Beneath Window

map('n', '<leader><Up>', '<cmd>wincmd k<CR>', opt)    -- Move Above Window

map('n', '<leader><Left>', '<cmd>wincmd h<CR>', opt)  -- Move Left Window

map('n', '<leader><Right>', '<cmd>wincmd l<CR>', opt) -- Move Right Window


-- Closing windows


map('n', '<leader>w', '<cmd>close<CR>', opt) -- Close Current Window

map('n', '<leader>]', '<cmd>+quit<CR>', opt) -- Close Next Window

map('n', '<leader>[', '<cmd>-quit<CR>', opt) -- Close Previous Window

map('n', '<leader>a', '<cmd>only<CR>', opt)  -- Close all window except the current active window



-- Resizing windows

map('n', '<leader>=', '<cmd>vertical wincmd =<CR>', opt)
map('n', '<leader>-', '<cmd>horizontal wincmd =<CR>', opt)
map('n', '<leader>W', '<cmd>:resize +2<CR>', opt)
map('n', '<leader>S', '<cmd>:resize -2<CR>', opt)
map('n', '<leader>D', '<cmd>:vertical resize +2<CR>', opt)
map('n', '<leader>A', '<cmd>:vertical resize -2<CR>', opt)

-- ✦────────────────── BUFFER KEYMAPS ──────────────────✦




-- ✦────────────────── Flutter KEYMAPS ──────────────────✦
map('n', '<leader>r', '<cmd>CocCommand flutter.run<CR>', opt)
map('n', '<leader>R', '<cmd>CocCommand flutter.provider.hot-reload<CR>', opt)
-- ✦────────────────── Flutter KEYMAPS ──────────────────✦
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.g.mapleader = " "
