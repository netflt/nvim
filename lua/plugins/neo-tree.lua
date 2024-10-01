
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    default_component_configs = {
        indent = {
            highlight = "NeoTreeIndentMarker",
            -- expander config, needed for nesting files
            with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
            expander_collapsed = "",
            expander_expanded = "",
            expander_highlight = "NeoTreeExpander",
        },
        icon = {
            folder_closed = "",
            folder_open = "",
            folder_empty = "",
            default = "*",
            highlight = "NeoTreeFileIcon"
        },
        
        git_status = {
            symbols = {
                -- Status type
                untracked = "",
                ignored   = "",
                unstaged  = "󰄱",
                staged    = "",
                conflict  = "",
            }
        },
    },
    filesystem = {
        filtered_items = {
            visible = true,
            show_hidden_count = true,
            hide_dotfiles = false,
            hide_gitignored = true,
            hide_by_name = {
                --'.git', '.DS_Store',  -- 'thumbs.db',
            },
            never_show = {'.git'},
        },
    }
  }
}
