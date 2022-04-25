local o = vim.opt
local wo = vim.wo
local cmd = vim.cmd

o.spell = true -- for spell plugin to work

o.hidden = true
o.cursorline = true
o.mouse = "a"
o.guicursor = "i:block"
o.clipboard = "unnamedplus"
o.tabstop = 4
o.shiftwidth = 4
o.smarttab = true
o.expandtab = true
o.smartindent = true
o.autoindent = true
o.cursorline = true
o.scrolloff = 8
o.hlsearch = false
o.ignorecase = true -- ignore case in search patterns
o.number = true
o.relativenumber = true
o.signcolumn = "yes"
o.showtabline = 2
o.showmode = false -- we don't need to see things like -- INSERT -- anymore
o.termguicolors = true
wo.wrap = false
wo.colorcolumn = "80"
o.tw = 80
cmd("set formatoptions-=t")
cmd("set formatoptions+=q")

cmd("highlight ColorColumn ctermbg=0 guibg=lightgrey")
-- cmd([[highlight ColorColumn ctermbg=0 guibg=lightgrey]])
