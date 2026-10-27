require("andrewsSauce.remap")
require("andrewsSauce.packer")
vim.g.start_cwd = vim.fn.getcwd()
print("Applying Andrew's Sauce")
vim.o.number = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.clipboard = "unnamedplus"
vim.opt.wrap = false
