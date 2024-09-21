-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.api.nvim_set_keymap

-- 复用 opt 参数
local opt = { noremap = true, silent = true }
map("n", "r", "<C-r>", opt)
-- 取消 s 默认功能
map("n", "s", "", opt)
-- windows 分屏快捷键
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- 关闭当前
map("n", "sc", "<C-w>c", opt)
-- 关闭其他
map("n", "so", "<C-w>o", opt)

-- Shift + hl  左右窗口之间跳转
map("n", "H", "<C-w>h", opt)
map("n", "L", "<C-w>l", opt)
-- 左右Tab切换
map("n", ";", ":BufferLineCyclePrev<CR>", opt)
map("n", "'", ":BufferLineCycleNext<CR>", opt)

-- 跳到行首行尾
map('n', '<C-h>', '^', opt)
map('n', '<C-l>', 'g_', opt)

map("i", "<C-h>", "<ESC>I", opt)
map("i", "<C-l>", "<ESC>A", opt)

-- 快速滚动
map("n", "<C-k>", "9k", opt)
map("n", "<C-j>", "9j", opt)

-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)

-- jump to define
map("n", "<leader>j", "<C-]>", opt)
map("v", "<leader>j", "<C-]>", opt)
map("n", "<leader>k", "<C-o>", opt)
map("v", "<leader>k", "<C-o]>", opt)

-- 退出
map("n", "q", ":q<CR>", opt)
map("n", "qq", ":q!<CR>", opt)
map("n", "Q", ":qa!<CR>", opt)

map("t", "<Esc>", "<C-\\><C-n>", opt)

--cmake
map("n", "<leader>cg", ":CMakeGenerate<CR>", opt)
map("n", "<leader>cb", ":CMakeBuild<CR>", opt)
map("n", "<leader>ci", ":CMakeInstall<CR>", opt)

--git diffview
map("n", "<leader>gf", ":DiffviewFileHistory % <CR>", opt)
map("n", "<leader>gv", ":DiffviewOpen<CR>", opt)
map("n", "<leader>go", ":DiffviewClose<CR>", opt)

local function open_git_log()
    local git_blame = require('gitblame')
    if git_blame.is_blame_text_available() then
        git_blame.get_sha(function(sha)
            if is_valid_sha(sha) then
                --utils.log("Unable to open commit URL as SHA is empty")
            end
        end)
    end
end

--map("n", "<leader>gv",  opt)
--dap debug
--map ("n",
--    "<leader>ds",
--    ":lua if vim.fn.filereadable('launch.json') then require('dap.ext.vscode').load_launchjs('launch.json', {lldb = {'c', 'cpp'}}) end<CR>"
--    .. ":lua require('dap').continue()<CR>",
--    opt
--)

map(
    "n",
    "<leader>de",
    ":lua require'dap'.close()<CR>"
        .. ":lua require'dap'.terminate()<CR>"
        .. ":lua require'dap.repl'.close()<CR>"
        .. ":lua require('dapui').close()<CR>",
    opt
)

map("n", "<F1>", ":lua require('dapui').toggle()<CR>", opt)
map("n", "<F5>", ":lua require('dap').continue()<CR>", opt)
map("n", "<F6>", ":lua require('dap').step_over()<CR>", opt)
map("n", "<F7>", ":lua require('dap').step_into()<CR>", opt)
map("n", "<F8>", ":lua require('dap').step_out()<CR>", opt)

map("n", "<F9>", ":lua require('dap').toggle_breakpoint()<CR>", opt)
map("n", "<F10>", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opt)
map("n", "<F11>", ":lua require('dap').set_breakpoint({ nil, nil, vim.fn.input('Log point message: ') })<CR>", opt)
map("v", "<F2>", ":lua require('dap.ui.variables').visual_hover()<CR>", opt)
map("n", "<F3>", ":lua require('dap').clear_breakpoints()<CR>", opt)
map("n", "<F4>", ":lua require('dap.ui.variables').hover()<CR>", opt)
