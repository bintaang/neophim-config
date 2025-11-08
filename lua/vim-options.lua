-- Enable line numbers
vim.opt.number = true

-- Highlight current line
vim.opt.cursorline = true

-- Custom colors
vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#414559' })
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#8caaee', bold = true })
