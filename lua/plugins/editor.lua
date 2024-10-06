-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
    -- disable plugins
    { "folke/lazydev.nvim", enabled = false },
    { "folke/tokyonight.nvim", enabled = false },
    { "catppuccin/nvim", enabled = false },
    { "folke/flash.nvim", enabled = false },
    { "echasnovski/mini.ai", enabled = false },
    { "williamboman/mason.nvim", enabled = false },
    { "williamboman/mason-lspconfig.nvim", enabled = false },
    { "stevearc/dressing.nvim", enabled = false },
    { "Bilal2453/luvit-meta", enabled = false },
    { "mfussenegger/nvim-lint", enabled = false },
    { "nvimdev/dashboard-nvim", enabled = false },
    { "windwp/nvim-ts-autotag", enabled = false },
    { "echasnovski/mini.icons", enabled = false },
    {
        "nvim-treesitter/nvim-treesitter",
        event = "VeryLazy",
        opts = {
            ensure_installed = { "cpp", "c", "json", "bash", "css", "vim", "lua", "javascript", "typescript", "tsx" },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            -- 启用增量选择模块
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<CR>",
                    node_incremental = "<CR>",
                    node_decremental = "<BS>",
                    scope_incremental = "<TAB>",
                },
            },
            -- 启用代码缩进模块 (=)
            indent = {
                enable = true,
            },
        },
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
}
