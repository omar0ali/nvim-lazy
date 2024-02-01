  --WHICH KEY
  return { "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      vim.cmd("WhichKey")
    end
  }
