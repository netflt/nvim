return {
    {
        'rcarriga/nvim-dap-ui',
        dependencies = {
          'mfussenegger/nvim-dap',
          'nvim-neotest/nvim-nio', -- Assuming this is also a dependency you want to include
          'theHamsta/nvim-dap-virtual-text'
        },
        opts = {},
      
        config = function()
          local dap, dapui = require 'dap', require 'dapui'
          dap.listeners.before.attach.dapui_config = function()
            dapui.open()
          end
          dap.listeners.before.launch.dapui_config = function()
            dapui.open()
          end
          dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
          end
          dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
          end
          dapui.setup()
        end,
    },
    {
        "mfussenegger/nvim-dap",
        event = "VeryLazy",
        keys = {},
        config = function()
            local dap = require("dap")
            dap.adapters.lldb = {
                type = 'executable',
                command = '/opt/homebrew/opt/llvm@18/bin/lldb-dap',
                name = 'lldb'
            }

           
            --dap.configurations.c = dap.configurations.cpp
            --dap.configurations.rust = dap.configurations.cpp
            --mapping = require("config.keymaps").mapDAP()
            vim.api.nvim_set_hl(0, "blue",   { fg = "#3d59a1" }) 
            vim.api.nvim_set_hl(0, "green",  { fg = "#9ece6a" }) 
            vim.api.nvim_set_hl(0, "yellow", { fg = "#FFFF00" }) 
            vim.api.nvim_set_hl(0, "orange", { fg = "#f09000" }) 

            vim.fn.sign_define('DapBreakpoint',          { text='', texthl='blue',   linehl='DapBreakpoint', numhl='DapBreakpoint' })
            vim.fn.sign_define('DapBreakpointCondition', { text='', texthl='blue',   linehl='DapBreakpoint', numhl='DapBreakpoint' })
            vim.fn.sign_define('DapBreakpointRejected',  { text='', texthl='orange', linehl='DapBreakpoint', numhl='DapBreakpoint' })
            vim.fn.sign_define('DapStopped',             { text='', texthl='green',  linehl='DapBreakpoint', numhl='DapBreakpoint' })
            vim.fn.sign_define('DapLogPoint',            { text='󰮍', texthl='yellow', linehl='DapBreakpoint', numhl='DapBreakpoint' })
        end,
    },
}

