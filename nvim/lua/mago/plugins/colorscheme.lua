return {
    "rose-pine/neovim", name="rose-pine",
    priority = 1000,
    config = function()
        local rosepine = require("rose-pine")
        rosepine.setup({})
        vim.cmd('colorscheme rose-pine')
    end
}
-- return {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 1000,
--     config = function()
--         local catppuccin = require("catppuccin")
--         catppuccin.setup({})
--         vim.cmd('colorscheme catppuccin-mocha')
--     end
-- }
