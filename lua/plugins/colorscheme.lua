-- return { 
--     "cdmill/neomodern.nvim", 
--     lazy = false, 
--     priority = 1000,
--     config = function()
--         require("neomodern").setup({
--             style = "roseprime"
--         })
--         require("neomodern").load()
--     end,
-- }
return {
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
        vim.cmd('colorscheme rose-pine')
        local color = "rose-pine"
        vim.cmd.colorscheme(color)

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
    end
}
