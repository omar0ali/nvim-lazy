return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },{
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "gopls",
          "cssls",
          "html",
          "htmx",
          "marksman",
          "jsonls",
          "tsserver",
          "pyright",
          "rust_analyzer",
          "templ"
        }
      })
    end
  },{
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      -- You can add more languages here
      lspconfig.gopls.setup({})
      lspconfig.cssls.setup({})
      lspconfig.html.setup({})
      lspconfig.htmx.setup({})
      lspconfig.marksman.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.pyright.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.templ.setup({})
    end
  }
}
