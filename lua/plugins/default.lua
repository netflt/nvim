-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
    {"catppuccin/nvim", enabled = false},
    {"folke/tokyonight.nvim", enabled = false},
    {"windwp/nvim-ts-autotag", enabled = false},
    {"echasnovski/mini.ai", enabled = false},
    {"folke/lazydev.nvim", enabled = false},
    {"stevearc/conform.nvim", enabled = false},
    {"Bilal2453/luvit-meta", enabled = false},
    {"garymjr/nvim-snippets", enabled = false},
    {"stevearc/dressing.nvim", enabled = false},
    { "EdenEast/nightfox.nvim" },
    {
        "LazyVim/LazyVim",
        tag = "v12.38.2",
        opts = {
        colorscheme = 'terafox',
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
    }
}
