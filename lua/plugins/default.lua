-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
    {"catppuccin/nvim", enabled = false},
    {"folke/tokyonight.nvim", enabled = false},
    { "projekt0n/github-nvim-theme", tag = 'v1.1.2' },
    {
        "LazyVim/LazyVim",
        tag = "v12.38.2",
        opts = {
        colorscheme = 'github_dark_dimmed',
        },
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = { ensure_installed = { "cpp" } },
    },
}
