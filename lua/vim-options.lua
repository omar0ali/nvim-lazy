-- Setup vim settings
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.cmd("set scrolloff=10")
vim.g.mapleader = " " -- <leader> space bar
-- Explore --
vim.keymap.set('n', '<leader>ee', ':Explore<CR>', { noremap = true, silent = true, desc = "Explore" })
-- Moving text up down left right --
vim.keymap.set('x', '<', '<gv', { noremap = true, silent = true })
vim.keymap.set('x', '>', '>gv', { noremap = true, silent = true })
vim.keymap.set('x', 'J', ':m \'>+1<CR>gv=gv', { noremap = true, silent = true })
vim.keymap.set('x', 'K', ':m \'<-2<CR>gv=gv', { noremap = true, silent = true })


-- Keymaping (Keys need to be updated)
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find Files" })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Live Grep" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Buffers" })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Help Tags" })

-- LSP Keymaps
vim.keymap.set('n', '<leader>.', vim.lsp.buf.hover, { desc = "Function Info"})
vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, { desc = "Go to definition"})
vim.keymap.set({'n','v'}, '<leader>ca', vim.lsp.buf.code_action, { desc = "Code Action"})
