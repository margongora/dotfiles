return {
   'kevinhwang91/nvim-ufo',
   dependencies = {
       'kevinhwang91/promise-async'
   },
   config = function ()
       local ufo = require('ufo')
       vim.o.foldcolumn = '1'
       vim.o.foldlevel = 99
       vim.o.foldlevelstart = 99
       vim.o.foldenable = true

       vim.keymap.set('n', 'zR', ufo.openAllFolds)
       vim.keymap.set('n', 'zM', ufo.closeAllFolds)
       vim.keymap.set('n', 'zr', ufo.openFoldsExceptKinds)
       vim.keymap.set('n', 'zm', ufo.closeFoldsWith)

       local capabilities = vim.lsp.protocol.make_client_capabilities()
       capabilities.textDocument.foldingRange = {
           dynamicRegistration = false,
           lineFoldingOnly = true
       }

       local lsps = require('lspconfig').util.available_servers()
       for _, ls in ipairs(lsps) do
           require('lspconfig')[ls].setup({
               capabilities = capabilities
           })
       end

       ufo.setup()

   end
}
