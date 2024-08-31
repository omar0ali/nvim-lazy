# nvim-lazy

### Plugins

> [!NOTE]
> You can go to plugins folder located in ("/lua/plugins/...")

- catppuccin
- lsp-config
- [Harpoon](https://github.com/ThePrimeagen/harpoon)
- lualine
- telescope
- tmux-vim-navigator
- treesitter
- completion
- alpha (Start Screen)

### Mason & Lsp

> [!NOTE]
> Command configuration (":Mason") or <leader>tm

- Language Servers: LSP from lsp_config
  - css-lsp (cssls)
  - gopld
  - html-lsp (html)
  - json-lsp (jsonls)
  - lua-language-server (lua_ls)
  - markdownlint
  - pyright
  - rust-analyzer
  - prettier
  - templ
  - typescript-language-server (tsserver)
    ...

### Vim keymap settings

> [!NOTE]
> File (vim-options.lua) containing Vim keymap settings.

```lua
-- Setup vim settings
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.expandtab = true
vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.relativenumber = true
vim.opt.scrolloff = 999
vim.opt.clipboard = "unnamedplus" -- Copy to clipboard enabled
-- vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.virtualedit = "block"
-- vim.opt.termguicolors = true



-- Explore to view files and folders --
vim.keymap.set("n", "<leader>ee", ":Explore<CR>", { noremap = true, silent = true, desc = "Explore" })
-- Moving text up down left right --
vim.keymap.set("x", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("x", ">", ">gv", { noremap = true, silent = true })
vim.keymap.set("x", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("x", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Keymaping (Keys need to be updated)
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help Tags" })

-- LSP Keymaps
vim.keymap.set("n", "<leader>.", vim.lsp.buf.hover, { desc = "Function Info" })
vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })

-- VIM FORMATTING USING NULL-LS
vim.keymap.set("n", "<leader>p", vim.lsp.buf.format, { desc = "Format document" })
```

### init.lua

```lua
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
require("lazy").setup("plugins") -- Load from plugins folder

-- Load Requirements from vim-options file
require("vim-options")
```

## My Neovim Configuration

This repository contains my personal Neovim configuration. Feel free to make changes and additions as you see fit.

### License

This Neovim configuration is licensed under the [MIT License](LICENSE).
