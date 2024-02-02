return {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
-- or                              , branch = '0.1.x',
    dependencies = { 
         'nvim-lua/plenary.nvim',
         "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local telescope = require('telescope')
        telescope.setup()

        local keymap = vim.keymap
        keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
    end
}
