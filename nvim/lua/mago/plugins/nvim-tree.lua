return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        vim.opt.termguicolors = true

        local nvimtree = require("nvim-tree")

        -- configure nvim-tree
        nvimtree.setup({
            view = {
                width = 30,
            },
            -- folder arrow icons
            renderer = {
                icons = {
                    glyphs = {
                        folder = {
                            arrow_closed = "",
                            arrow_open = "",
                        },
                    },
                },
            },
        })

        local keymap = vim.keymap

        keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>")
        keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>")
        keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")
    end

}
