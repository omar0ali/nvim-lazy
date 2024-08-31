return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "leoluz/nvim-dap-go",
        "rcarriga/nvim-dap-ui",
        "tpope/vim-fugitive",
    },
    config = function()
        require("dapui").setup()
        require("dap-go").setup()

        local dap, dapui = require("dap"), require("dapui")

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        -- vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, { desc = "Go to definition" })
        -- Adding description of the prefix to give a meaningfull name.
        vim.keymap.set("n", "<Leader>b", ":echo", { desc = "Debugging Tools" })
        vim.keymap.set("n", "<Leader>bt", ":DapToggleBreakpoint<CR>", { desc = "Toggle BreakPoint" })
        vim.keymap.set("n", "<Leader>bc", ":DapContinue<CR>", { desc = "Continue" })
        vim.keymap.set("n", "<Leader>bx", ":DapTerminate<CR>", { desc = "Terminate" })
        vim.keymap.set("n", "<Leader>bo", ":DapStepOver<CR>", { desc = "Step Over" })
    end,
}
