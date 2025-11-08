return {
    
        local map = vim.keymap.set;
        local opts = {noremap=true, silent=true};
        {
            vim.keymap.set('n', '<C-]>', '<cmd>vs<CR>', { noremap = true, silent = true })
        },
    
}
