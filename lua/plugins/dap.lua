return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio", -- dependency for nvim-dap-ui
        "leoluz/nvim-dap-go", -- for Golang
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")
        dapui.setup()

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

        vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, {})
        vim.keymap.set("n", "<Leader>dc", dap.continue, {})

        -- Langs Specific setup:
        require("dap-go").setup()
    end,
}
