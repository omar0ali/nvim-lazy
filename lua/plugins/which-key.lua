--WHICH KEY
return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
        require("which-key").setup({
            -- You can put your configuration options here
        })

        -- You don't need to run `vim.cmd("WhichKey")`
        -- Just configure which-key directly with the `setup` function
    end
}
