return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "gopls", "pyright", "ts_ls" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
               capabilities = capabilities
            })
            lspconfig.gopls.setup({
               capabilities = capabilities
            })
            lspconfig.pyright.setup({
               capabilities = capabilities
            })
            lspconfig.ts_ls.setup({
               capabilities = capabilities
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
            vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, {})
            vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<leader>rr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
            vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, {})
        end,
    },
}
