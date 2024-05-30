require("salesforce").setup({
    debug = {
        to_file = false, -- logs debug messages to a file at vim.fn.stdpath("cache") .. "/salesforce.log"
        to_command_line = false,
    },
    popup = {
        -- The width of the popup window.
        width = 100,
        -- The height of the popup window.
        height = 20,
        -- The border characters to use for the popup window
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    },
    file_manager = {
        ignore_conflicts = false, -- ignores conflicts on "sf project retrieve/deploy"
    },
    org_manager = {
        default_org_indicator = "󰄬",
    },
    -- Default SF CLI executable (should not need to be changed)
    sf_executable = "sf",
})
