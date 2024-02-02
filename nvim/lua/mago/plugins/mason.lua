return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim"
    },

    config = function()
        local mason = require("mason")
        local mason_lsp = require("mason-lspconfig")

        mason.setup()
        mason_lsp.setup({
            ensure_installed = {
                "clangd",
                "rust_analyzer",
                "lua_ls",
                "html",
                "cssls",
                "emmet_ls",
                "pyright",
                "hls",
                "tsserver",
            },
            automatic_installation = true,
        })
    end
}
