vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.scrolloff = 8

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("v", "<leader>y", '"+y')

-- GIT

-- vim.keymap.set("n", "<C-p>", ":GFiles<CR>")
vim.keymap.set("n", "<leader>pf", ":GFiles<CR>")
vim.keymap.set("n", "<C-j>", ":cnext")
vim.keymap.set("n", "<C-k>", ":cprev")

-- Save file and format
vim.keymap.set("n", "<leader>w", ":w<CR>")
