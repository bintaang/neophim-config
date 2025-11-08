return {
    {
        'neoclide/coc.nvim',
        branch = 'release',
        config = function()
            local map = vim.keymap.set
            local opts = { silent = true, noremap = true }

            --Navigate
            map("n", "gd", "<Plug>(coc-definition)", opts)
            map("n", "gy", "<Plug>(coc-type-definition)", opts)
            map("n", "gi", "<Plug>(coc-implementation)", opts)
            map("n", "gr", "<Plug>(coc-references)", opts)

            -- Diagnoses
            map("n", "K", ":call CocActionAsync('doHover')<CR>", opts)
            map("n", "<leader>d", ":CocList diagnostics<CR>", opts)
            map("n", "[g", "<Plug>(coc-diagnostic-prev)", opts)
            map("n", "]g", "<Plug>(coc-diagnostic-next)", opts)

            -- Refactor & format
            map("n", "<leader>rn", "<Plug>(coc-rename)", opts)
            map("n", "<leader>fd", "<Plug>(coc-codeaction)", opts)
            map("n", "<C-f>", ":call CocAction('format')<CR>", opts)
            map("n", "<leader>qf", "<Plug>(coc-fix-current)", opts)

            -- Outline & symbols
            map("n", "<leader>o", ":CocList outline<CR>", opts)
            map("n", "<leader>s", ":CocList symbols<CR>", opts)
            map("n", "<leader>e", ":CocList extensions<CR>", opts)
            map("n", "<leader>r", ":CocRestart<CR>", opts)
            map("n", "<leader>cc", ":CocConfig<CR>", opts)

            -- Insert mode autocomplete
            map("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_backspace() ? "<TAB>" : coc#refresh()',
                { expr = true, silent = true })
            map("i", "<S-TAB>", 'coc#pum#visible() ? coc#pum#prev(1) : "<C-h>"', { expr = true, silent = true })
            map("i", "<CR>", 'coc#pum#visible() ? coc#pum#confirm() : "<CR>"', { expr = true, silent = true })

            vim.cmd([[
  function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction
]])


            -- ===============================
            -- CoC UI Enhancement by Reza
            -- ===============================
            vim.g.coc_user_config = {
                suggest = {
                    enablePreselect = true,
                    maxCompleteItemCount = 15,
                    detailField = "menu",
                    completionItemKindLabels = {
                        Text = "",
                        Method = "",
                        Function = "󰊕",
                        Constructor = "",
                        Field = "",
                        Variable = "",
                        Class = "",
                        Interface = "",
                        Module = "",
                        Property = "",
                        Unit = "",
                        Value = "",
                        Enum = "",
                        Keyword = "",
                        Snippet = "",
                        Color = "",
                        File = "",
                        Reference = "",
                        Folder = "",
                        EnumMember = "",
                        Constant = "",
                        Struct = "",
                        Event = "",
                        Operator = "",
                        TypeParameter = "",
                    },
                },

                -- Aktifkan snippet
                snippet = {
                    enable = true,
                },

                -- Visual diagnostics
                diagnostic = {
                    virtualText = true,
                    signOffset = 1,
                    signs = {
                        error = " ",
                        warning = " ",
                        information = " ",
                        hint = " ",
                    },
                },

                -- Auto format on save
                coc = {
                    preferences = {
                        formatOnSaveFiletypes = { "lua", "javascript", "typescript", "python", "json", "flutter", "dart" },
                    },
                },
            }
        end
    }
}
