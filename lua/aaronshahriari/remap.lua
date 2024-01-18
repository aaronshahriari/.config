vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.g.netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
vim.cmd('autocmd FileType netrw set nu')

-- create new tab
vim.api.nvim_set_keymap('n', '<leader>T', ':tabnew|E<CR>', { noremap = true, silent = true })
-- Map <leader>-h and <leader>-l to cycle through tabs
vim.api.nvim_set_keymap('n', '<leader>h', ':tabprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>l', ':tabnext<CR>', { noremap = true, silent = true })

-- Map <leader>-j and <leader>-k to cycle through splits
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>h', { noremap = true, silent = true })

-- Map <leader>-n to open a new tab
vim.api.nvim_set_keymap('n', '<leader>n', ':tabnew<CR>', { noremap = true, silent = true })

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

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
