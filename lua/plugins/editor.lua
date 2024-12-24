-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
    -- disable plugins
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
    { "nvim-treesitter/nvim-treesitter-textobjects", enabled = false },
    { "nvim-treesitter/nvim-treesitter", enabled = false } ,
    { "folke/ts-comments.nvim", enabled = false },
    { 
        'kevinhwang91/nvim-ufo', 
        dependencies = 'kevinhwang91/promise-async',
        opts = {
        },
        config = function(_, opts)
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities.textDocument.foldingRange = {
                dynamicRegistration = true,
                lineFoldingOnly = true
            }
            local language_servers = require("lspconfig").util.available_servers() -- or list servers manually like {'gopls', 'clangd'}
            for _, ls in ipairs(language_servers) do
                require('lspconfig')[ls].setup({
                    capabilities = capabilities
                    -- you can add other fields for setting up lsp server in this table
                })
            end
            require('ufo').setup(opts)
        end
    },
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            { "<leader><space>" , ":", desc = "Switch Command mode",},
        },
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            presets = {
                bottom_search = false,
            },
        } 
    }
    
}
