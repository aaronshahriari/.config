-- not allow the mouse
-- vim.o.mouse = ""

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.list = true
vim.opt.listchars:append({ tab = '  ', nbsp = ' ', trail = ' ', eol = '↲' })

-- used for obsidian
vim.opt.conceallevel = 1

-- change in builtin.lua found here -> ~\Local\nvim-data\site\pack\packer\start\midnight\lua\midnight\highlight
-- vim.cmd('highlight NonText guifg=#575757')

-- set the window options for :term
vim.api.nvim_exec([[
  augroup TermWindowConfig
    autocmd!
    autocmd TermOpen * setlocal scrolloff=0
  augroup END
]], false)

-- automatically enter insert mode when switching to :term window
vim.api.nvim_exec([[
  augroup AutoEnterInsert
    autocmd!
    autocmd WinEnter term://* startinsert
  augroup END
]], false)
