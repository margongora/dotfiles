return {
    "akinsho/bufferline.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function ()
        local bufferline = require('bufferline')
        bufferline.setup ({
            options = {
                style_preset = {
                    bufferline.style_preset.no_italic,
                    bufferline.style_preset.no_bold,
                },
                offsets = {{
                    filetype = "NvimTree",
                    text = "File Explorer",
                    text_align = "center",
                    separator = true
                }}
            }
        })

        local keymap = vim.keymap
        keymap.set("n", "<tab>", "<CMD>BufferLineCycleNext<CR>")
        keymap.set("n", "<leader>c", "<CMD>bdelete<CR>")
    end
}
