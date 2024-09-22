-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
    {
        "netflt/LazyVim",
        opts = {
            colorscheme = 'nordfox',
        },
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = { ensure_installed = { "cpp" } },
    },
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            { "<leader><space>" , ":", desc = "Switch Command mode",},
        },
    },
    {
        "RRethy/vim-illuminate",
        event = "VeryLazy"
    },
    {
        "rmagatti/goto-preview",
        event = BufReadPre,
        config = function()
            require("goto-preview").setup({
                width = 120,
                height = 25,
                default_mappings = true,
                debug = false,
                opacity = nil,
                post_open_hook = nil, 
            })
        end,
    },
}
