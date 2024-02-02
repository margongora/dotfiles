return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip", -- for autocompletion
        "rafamadriz/friendly-snippets", -- useful snippets
        "onsails/lspkind.nvim", -- vs-code like pictograms},
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp"
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        local lspkind = require("lspkind")
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        require("luasnip.loaders.from_vscode").lazy_load()

        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" }, -- snippets
                { name = "buffer" }, -- text within current buffer
                { name = "path" }, -- file system paths
            }),
            formatting = {
                format = lspkind.cmp_format({
                    maxwidth = 50,
                    ellipsis_char = "...",
                }),
            },
        })

        local capabilities = cmp_nvim_lsp.default_capabilities()

        lspconfig.clangd.setup({
            capabilities = capabilities
        })

        lspconfig.rust_analyzer.setup({
            capabilities = capabilities
        })

        lspconfig.lua_ls.setup({
            capabilities = capabilities,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' }
                    }
                }
            },
        })

        lspconfig.html.setup({
            capabilities = capabilities
        })

        lspconfig.cssls.setup({
            capabilities = capabilities
        })

        lspconfig.emmet_ls.setup({
            capabilities = capabilities,
            filetypes = {"html", "css"}
        })

        lspconfig.pyright.setup({
            capabilities = capabilities
        })

        lspconfig.hls.setup({
            capabilities = capabilities
        })

        lspconfig.tsserver.setup({
            capabilities = capabilities
        })

        vim.api.nvim_set_hl(0, '@lsp.typemod.function.defaultLibrary.lua', {})
        vim.api.nvim_set_hl(0, "@lsp.type.function.lua", {})
    end
}
