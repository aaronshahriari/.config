vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.g.netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
vim.cmd('autocmd FileType netrw set nu')
