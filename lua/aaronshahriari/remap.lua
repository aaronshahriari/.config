vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.g.netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
vim.cmd('autocmd FileType netrw set nu')

-- Map these to move through splits
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })

-- Map to change split size
vim.api.nvim_set_keymap('n', '<Left>', '<C-w>3<', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<C-w>3>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '<C-w>3+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Up>', '<C-w>3-', { noremap = true, silent = true })

-- map all splits set equal
vim.api.nvim_set_keymap('n', '<leader>=', '<C-w>=', { noremap = true, silent = true })

-- Map <leader>-n to open a new tab
vim.api.nvim_set_keymap('n', '<leader>n', ':tabnew<CR>', { noremap = true, silent = true })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- flip flop visual line blocks
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- get to normal mode in terminal
vim.api.nvim_set_keymap('t', '<ESC>', [[<C-\><C-n>]], { noremap = true, silent = true })

-- Define a function for creating a small terminal
function small_terminal()
    vim.cmd('new')
    vim.cmd('wincmd J')
    vim.api.nvim_win_set_height(0, 12)
    vim.cmd('term')
    vim.api.nvim_feedkeys('a', 'n', true)
end

-- Create a mapping for the small terminal function
vim.api.nvim_set_keymap('n', '<leader>st', ':lua small_terminal()<CR>', { noremap = true, silent = true })
