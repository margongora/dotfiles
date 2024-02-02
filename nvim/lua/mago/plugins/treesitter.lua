return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    priority = 999,
    config = function ()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {
                "c",
                "cpp",
                "rust",
                "python",
                "html",
                "css",
                "haskell",
                "javascript"
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
