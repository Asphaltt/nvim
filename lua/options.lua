local opt = vim.opt
local g = vim.g
local api = vim.api
local map = vim.api.nvim_set_keymap

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.gitgutter_map_keys = false

-- Set the leader key to comma
g.mapleader = ","
g.maplocalleader = ","  -- Optional: Set local leader as well

api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = true, silent = true }) -- Insert mode

opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.encoding = "utf-8"
opt.scrolloff = 0
opt.wrap = false
opt.smartcase = true
opt.ignorecase = true
opt.completeopt = "menu,menuone,noselect"

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.breakindent = true
opt.smartindent = true
opt.expandtab = true
opt.autoindent = true

opt.termguicolors = true
opt.winblend = 0
opt.wildoptions = "pum"
opt.pumblend = 0
opt.cursorline = true
opt.cursorlineopt = "number"
opt.laststatus = 2
opt.showmode = false
opt.showcmd = false
opt.ruler = false
opt.number = true
opt.signcolumn = "yes:1"
opt.backspace = "indent,eol,start"
opt.fillchars = { eob = " " }

opt.clipboard:prepend { "unnamed", "unnamedplus" } -- windows
-- opt.clipboard:append { "unnamedplus" } -- unix


-- Normal mode mappings
map("n", "<leader>q", ":q<CR>", { noremap = true, silent = true })    -- Quit
map("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })    -- Write
map("n", "<leader>x", ":wq<CR>", { noremap = true, silent = true })   -- Save and Exit (write and quit)
map("n", "<leader>X", ":x<CR>", { noremap = true, silent = true }) -- Save and Exit (same as :wq)

-- Insert mode mappings (if you want these to work in insert mode too)
map("i", "<leader>q", "<Esc>:q<CR>", { noremap = true, silent = true })  -- Quit
map("i", "<leader>w", "<Esc>:w<CR>", { noremap = true, silent = true })  -- Write
map("i", "<leader>x", "<Esc>:wq<CR>", { noremap = true, silent = true }) -- Save and Exit
map("i", "<leader>X", "<Esc>:x<CR>", { noremap = true, silent = true }) -- Save and Exit

-- Visual mode mappings (if you want these to work in visual mode too)
map("v", "<leader>q", ":q<CR>", { noremap = true, silent = true })    -- Quit
map("v", "<leader>w", ":w<CR>", { noremap = true, silent = true })    -- Write
map("v", "<leader>x", ":wq<CR>", { noremap = true, silent = true })   -- Save and Exit
map("v", "<leader>X", ":x<CR>", { noremap = true, silent = true }) -- Save and Exit


-- Command-line mode mappings (if you want these to work in command-line mode too)
map("c", "<leader>q", "<Esc>:q<CR>", { noremap = true, silent = true })  -- Quit
map("c", "<leader>w", "<Esc>:w<CR>", { noremap = true, silent = true })  -- Write
map("c", "<leader>x", "<Esc>:wq<CR>", { noremap = true, silent = true }) -- Save and Exit
map("c", "<leader>X", "<Esc>:x<CR>", { noremap = true, silent = true }) -- Save and Exit
