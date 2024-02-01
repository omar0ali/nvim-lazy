-- Setup vim settings
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.cmd("set scrolloff=10")
vim.g.mapleader = " "
--vim.cmd("set number")
-- Setup Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins") -- Load from plugins folder


-- Explore --
vim.keymap.set('n', '<leader>ee', ':Explore<CR>', { noremap = true, silent = true })
-- Moving text up down left right --
vim.keymap.set('x', '<', '<gv', { noremap = true, silent = true })
vim.keymap.set('x', '>', '>gv', { noremap = true, silent = true })
vim.keymap.set('x', 'J', ':m \'>+1<CR>gv=gv', { noremap = true, silent = true })
vim.keymap.set('x', 'K', ':m \'<-2<CR>gv=gv', { noremap = true, silent = true })

