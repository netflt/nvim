return {
    {
        "lewis6991/gitsigns.nvim",
        enabled = false
    },
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
        "f-person/git-blame.nvim",
        opts = {
            set_extmark_options = {
                hl_mode = "combine"
            },
            message_template = '     <<author>> • <date>, <summary>',
            date_format = "%r",
            delay = 100,
            message_when_not_committed = '     <Not Committed Yet !>',
            highlight_group = "LineNr"
        }
    },
}
