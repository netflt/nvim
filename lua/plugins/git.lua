return {
    {
        'sindrets/diffview.nvim',
        event = "VeryLazy"
    },
    {
        "lewis6991/gitsigns.nvim",
        enabled = false
    },
    {
        "braxtons12/blame_line.nvim",
        config = function()
            require("blame_line").setup {
                delay = 50,
            }
        end
    }

}
