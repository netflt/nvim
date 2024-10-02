
return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-cmdline",
    },
    init = function()
        local cmp = require("cmp")
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
