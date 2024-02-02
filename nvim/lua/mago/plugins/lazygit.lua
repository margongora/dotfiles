return {
    "kdheepak/lazygit.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function ()
        local keymap = vim.keymap
        keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>")
        keymap.set("n", "<leader>gc", "<cmd>LazyGitFilterCurrentFile<cr>")
    end
}
