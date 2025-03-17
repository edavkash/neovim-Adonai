return {
    "github/copilot.vim",
    requires = {
        { "nvim-treesitter/nvim-treesitter" },
        { "nvim-treesitter/playground" },
        {telescope = "nvim-telescope/telescope.nvim"},
    },
    config = function()
        vim.keymap.set("i", "<C-L>", "<Plug>(copilot-accept-word)")
    end,
}
