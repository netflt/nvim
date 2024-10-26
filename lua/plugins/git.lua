return {
    {
        'sindrets/diffview.nvim',
        event = "VeryLazy",
        opts = {
             view = {
                default = {
                    -- Config for changed files, and staged files in diff views.
                    disable_diagnostics = true,  -- Temporarily disable diagnostics for diff buffers while in the view.
                },
                file_history = {
                    -- Config for changed files in file history views.
                    disable_diagnostics = true,  -- Temporarily disable diagnostics for diff buffers while in the view.
                },
            },
        }
    },
    {
        "lewis6991/gitsigns.nvim",
        event = "VeryLazy",
        opts = {
            signs_staged_enable = false,
            signcolumn = false,
            current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
            current_line_blame_opts = {
                virt_text = true,
                virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
                delay = 100,
                ignore_whitespace = false,
                virt_text_priority = 100,
                use_focus = true,
            },
            current_line_blame_formatter = '     [<author>] • <author_time:%R>, <summary>',
            current_line_blame_formatter_nc = '     <Not Committed Yet !>',
        },
        config = function(_, opts)
            require('gitsigns').setup(opts)
            vim.api.nvim_command('highlight! link GitSignsCurrentLineBlame Comment')
        end
    },
}
