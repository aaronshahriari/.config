require("oil").setup({
    default_file_explorer = false,
    columns = { "icon" },
    view_options = {
        show_hidden = true,
    },
    float = {
        -- Padding around the floating window
        padding = 2,
        max_width = 70,
        max_height = 30,
        border = "single",
        win_options = {
            winblend = 0,
        },
    },
})

-- Open parent directory in floating window
vim.keymap.set("n", "<space>-", require("oil").toggle_float)
