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
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function ()
            require('gitsigns').setup {
                current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
                current_line_blame_opts = {
                    virt_text = true,
                    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
                    delay = 100,
                    ignore_whitespace = false,
                    virt_text_priority = 100,
                    use_focus = true,
                },
                current_line_blame_formatter = '[<abbrev_sha>] <author> (<author_time:%R>) - <summary>',
            }
        end
    }
}
