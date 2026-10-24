-- Startup
vim.loader.enable()

-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- UI
vim.o.number = true
vim.o.relativenumber = true

vim.o.cursorline = true
vim.o.scrolloff = 10
vim.o.showmode = false
vim.o.signcolumn = "yes"

-- Commands
vim.o.confirm = true

-- Clipboard
vim.g.clipboard = "osc52"

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Packages
local function gh(repo) return "https://github.com/" .. repo end

vim.pack.add { gh "ellisonleao/gruvbox.nvim" }
require("gruvbox").setup()
vim.cmd.colorscheme "gruvbox"

vim.pack.add { gh "lewis6991/gitsigns.nvim" }
require("gitsigns").setup()
