return {
    "folke/trouble.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function ()
        local trouble = require("trouble")
        local keymap = vim.keymap
        keymap.set("n", "<leader>xx", function() trouble.toggle() end)
    end
}
