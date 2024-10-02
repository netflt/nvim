return {
    {
        "tanvirtin/vgit.nvim",
        event = "VeryLazy",
        keys = {
            { '<leader>k', function() require('vgit').hunk_up() end, desc = 'hunk up'},
            { '<leader>j', function() require('vgit').hunk_down() end, desc = 'hunk down'},
            { '<leader>gd', function() require('vgit').project_diff_preview() end, desc = 'project diff preview'},
            { '<leader>gh', function() require('vgit').buffer_blame_preview() end, desc = 'buffer blame preview'},
        },
        opts = {
            settings = {
                live_gutter = {
                    enabled = false,
                    edge_navigation = false,  -- Thisunified allows users to navigate within a hunk
                },
                authorship_code_lens = {
                    enabled = false,
                },
                scene = {
                    diff_preference = 'split',
                    keymaps = {
                        quit = 'q'
                    }
                },
            }
        },
        config = function (_, opts)
            require('vgit').setup(opts)
        end
    },
    {
        "lewis6991/gitsigns.nvim",
        enabled = false
    }
}
