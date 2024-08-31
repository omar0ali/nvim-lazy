--TREESITTER
return {
    "nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/nvim-treesitter-textobjects",
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
                "c++",
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
            indent = { enable = true },

            incremental_selection = {
                enable = true,
                keymaps = { -- if you want to highlight quickly with using these keymaps
                    init_selection = "<leader>ss",
                    node_incremental = "<leader>si",
                    scope_incremental = "<leader>sc",
                    node_decremental = "<leader>sd",
                },
            },
            textobjects = {
                select = {
                    enable = true,
                    lookahead = true,
                    keymaps = {
                        -- You can use the capture groups defined in textobjects.scm
                        ["af"] = "@function.outer",
                        ["if"] = "@function.inner",
                        ["ac"] = "@class.outer",
                        ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                        ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
                    },
                    -- You can choose the select mode (default is charwise 'v')
                    --
                    -- Can also be a function which gets passed a table with the keys
                    -- * query_string: eg '@function.inner'
                    -- * method: eg 'v' or 'o'
                    -- and should return the mode ('v', 'V', or '<c-v>') or a table
                    -- mapping query_strings to modes.
                    selection_modes = {
                        ['@parameter.outer'] = 'v', -- charwise
                        ['@function.outer'] = 'v',  -- linewise
                        ['@class.outer'] = '<c-v>', -- blockwise
                    },
                    -- Can also be a function which gets passed a table with the keys
                    -- * query_string: eg '@function.inner'
                    -- * selection_mode: eg 'v'
                    -- and should return true or false
                    include_surrounding_whitespace = true,
                },
            }
        })
    end
}
