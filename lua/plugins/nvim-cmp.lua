
return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-cmdline",
    },
    opts = {
        experimental = {
            ghost_text = false, --隐藏编辑时默认补全的内容,否则影响可读性 
        },
        preselect = require("cmp").PreselectMode.None,
        mapping = require("cmp").mapping.preset.insert({
          ["<tab>"] = require("cmp").mapping.select_next_item({ behavior = require("cmp").SelectBehavior.Insert }),
        }),
    },

    config = function(_, opts)
        local cmp = require("cmp")
        cmp.setup(opts)
        -- / 查找模式使用 buffer 源
        cmp.setup.cmdline("/", {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = "buffer" },
            },
        })

        -- : 命令行模式中使用 path 和 cmdline 源.
        cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
            { name = "path" },
        }, {
            { name = "cmdline" },
        }),
        })
    end,
}
