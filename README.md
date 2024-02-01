# nvim-lazy

### Plugins


> [!NOTE]
>You can go to plugins folder located in ("/lua/plugins/...")

- catppuccin
- lsp-config
- lualine
- none-ls or null-ls
- telescope
- tmux-vim-navigator
- treesitter
- which-key

### Mason & Lsp

> [!NOTE]
> Command configuration (":Mason")

- Language Servers:
  - css-lsp (cssls)
  - gopld
  - html-lsp (html)
  - htmx-lsp (htmx)
  - json-lsp (jsonls)
  - lua-language-server (lua_ls)
  - markdownlint
  - pyright
  - rust-analyzer
  - semgrep
  - templ
  - typescript-language-server (tsserver)

### Vim keymap settings

> [!NOTE]
> File (vim-options.lua) containing Vim keymap settings.

```lua
-- Setup vim settings
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.cmd("set scrolloff=10")


-- Explore --
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

This repository contains my personal Neovim configuration, tailored to my workflow and preferences. You can change and add to it as you wish.

### License

This Neovim configuration is licensed under the [MIT License](LICENSE).
