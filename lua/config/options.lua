local opt = vim.opt
local global = vim.g

-- Use clipboard
opt.clipboard = "unnamedplus"

-- Word wrap
opt.wrap = true
opt.breakindent = true
opt.linebreak = true
opt.conceallevel = 0
opt.cmdheight = 0

-- Autoformat on save
global.autoformat = true

-- Root Neotree
vim.g.root_spec = { "cwd" }
vim.g.omni_sql_no_default_maps = 1
vim.g.python3_host_prog = "/opt/homebrew/bin/python3"
