return {
    {
        "lewis6991/gitsigns.nvim",
        enabled = false
    },
    {
        'sindrets/diffview.nvim',
        event = "VeryLazy"
    },
    {
        "f-person/git-blame.nvim",
        opts = {
            set_extmark_options = {
                hl_mode = "combine"
            },
            delay = 100
        }
    }

}
