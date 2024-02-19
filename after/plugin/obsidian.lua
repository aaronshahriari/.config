require("obsidian").setup({
    workspaces = {
        {
            name = "Personal",
            path = "~/Onedrive/Documents/Aaron's Vault/Personal",
            overrides = {
                notes_subdir = "Personal",
            },
        },
        {
            name = "Workouts",
            path = "~/Onedrive/Documents/Aaron's Vault/Workouts",
            overrides = {
                notes_subdir = "Workouts",
            },
        },
        {
            name = "DoranJones",
            path = "~/Onedrive/Documents/Aaron's Vault/DoranJones",
            overrides = {
                notes_subdir = "DoranJones",
            },
        },
    },

    note_id_func = function(title)
        local suffix = ""
        if title ~= nil then
            suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9_-]", "")
        else
            for _ = 1, 4 do
                suffix = suffix .. string.char(math.random(65, 90))
            end
        end
        return suffix
    end,

    disable_frontmatter = false,
    note_frontmatter_func = function(note)
        local currentDate = os.date("%m/%d/%Y")
        local out = { id = note.id .. " - " .. currentDate, aliases = {}, tags = {} }
        if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
            for k, v in pairs(note.metadata) do
                out[k] = v
            end
        end
        return out
    end,
})
