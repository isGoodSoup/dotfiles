vim.cmd("let g:netrw_liststyle = 3")
local opt = vim.opt
opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting a new on

opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search assume you want case sensitive
opt.cursorline = true

-- turn on termguicolors for colorscheme
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line and start

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default


