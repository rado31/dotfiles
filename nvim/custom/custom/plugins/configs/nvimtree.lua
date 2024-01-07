local options = {
    filters = {
        custom = { "node_modules", "venv" },
    },
    update_focused_file = {
        enable = true,
        update_root = true,
    },
    view = {
        adaptive_size = true,
        side = "left",
    },
    git = {
        enable = true,
        ignore = false,
    },
    renderer = {
        root_folder_label = false,
        highlight_git = true,

        indent_markers = {
            enable = true,
        },

        icons = {
            show = {
                git = true,
            },
        },
    },
}

return options
