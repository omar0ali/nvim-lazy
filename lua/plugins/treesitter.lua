--TREESITTER
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        --Treesitter settings
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {
                "lua",
                "vim",
                "vimdoc",
                "query",
                "python",
                "markdown",
                "javascript",
                "typescript",
                "java",
                "go",
                "rust",
                "c",
                "css",
                "html",
                "bash",
                "html",
                "css"
            },
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = true,
            },
            indent = { enable = true }
        })
    end
}
