-- Leader key must be loaded before Lazy
vim.g.mapleader = " " -- <leader> space bar
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
require("lazy").setup("plugins") -- Load from plugins folder (Or provide a folder that has files) All of the files starts with return {...}
-- Another way of using require("lazy"):
---- require("lazy").setup({
----    "git url"
---- })
-- Load Requirements from vim-options file
require("vim-options") -- Load the file and setup.
