return {
    'akinsho/toggleterm.nvim',
    config = function() 
        local term = require('toggleterm')
        term.setup()

        local keymap = vim.keymap
        keymap.set("n", "<leader>t", "<cmd>ToggleTerm<CR>")

    end
}
