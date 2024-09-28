local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Основные
vim.g.mapleader = " " -- Leader Key
map('n', '<C-s>', ':w<CR>', opts)
map('i', 'jk', '<Esc>', opts)

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<leader>fb', ':Telescope buffers<CR>', opts)
map('n', '<leader>fh', ':Telescope help_tags<CR>', opts)

-- Neotree
map('n', '<leader>tt', ':Neotree toggle<CR>', opts)
map('n', '<leader>tf', ':Neotree focus<CR>', opts)
