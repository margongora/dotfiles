return {
    "lewis6991/gitsigns.nvim",
    event = "BufEnter",
    config = function ()
        local gitsigns = require("gitsigns")
        gitsigns.setup()
    end
}
