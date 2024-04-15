require("obsidian").setup({
    workspaces = {
        {
            name = "Personal",
            path = "~/../../mnt/c/Users/AaronShahriari/Aaron_Vault/Personal",
        },
        {
            name = "BrundageGroup",
            path = "~/../../mnt/c/Users/AaronShahriari/Aaron_Vault/BrundageGroup",
        },
    },
    ui = {
        enable = true,  -- set to false to disable all additional syntax features
        update_debounce = 200,  -- update delay after a text change (in milliseconds)
        -- Define how various check-boxes are displayed
        checkboxes = {
            [" "] = { char = "☐", hl_group = "ObsidianTodo" },
            ["x"] = { char = "✓", hl_group = "ObsidianDone" },
            [">"] = { char = "»", hl_group = "ObsidianRightArrow" },
            ["~"] = { char = "X", hl_group = "ObsidianTilde" },
            -- Replace the above with this if you don't have a patched font:
            -- [" "] = { char = "☐", hl_group = "ObsidianTodo" },
            -- ["x"] = { char = "✔", hl_group = "ObsidianDone" },

            -- You can also add more custom ones...
        },    -- see below for full list of options 👇
    }
})
