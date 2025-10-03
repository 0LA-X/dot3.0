require "nvchad.options"

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

local o = vim.opt
-- add yours here!

-- o.cursorlineopt ='both' -- to enable cursorline!
o.number = true         -- Show absolute line number
o.relativenumber = true -- Show relative numbers
