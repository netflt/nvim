return {
    {
        "tanvirtin/vgit.nvim",
        event = "VeryLazy",
        config = function ()
            require('vgit').setup()
        end
    },
    {
        "lewis6991/gitsigns.nvim",
        enabled = false
    }
}
