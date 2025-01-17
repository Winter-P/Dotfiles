vim.keymap.set({"n","o","v"}, "ñ", "h")
vim.keymap.set({"n","o","v"}, "é", "j")
vim.keymap.set({"n","o","v"}, "í", "k")
vim.keymap.set({"n","o","v"}, "ó", "l")
vim.keymap.set({"n","o","v"}, ";", ":", {noremap = true})
vim.keymap.set({"n","o","v"}, "ã", ";", {noremap = true})
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fp", vim.cmd.Ex)

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>x", "\"_x")

vim.keymap.set("n", "<leader>w", "<C-W>")

vim.keymap.set("v","É", ":m '>+1<CR>gv=gv")
vim.keymap.set("v","Í", ":m '<-2<CR>gv=gv")

vim.keymap.set({"n", "o", "v"}, "ü", "\"+y")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
