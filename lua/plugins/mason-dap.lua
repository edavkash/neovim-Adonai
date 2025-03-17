return {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = {
        "mfussenegger/nvim-dap",
        "williamboman/mason.nvim",
    },
    config = function()
        require("mason").setup()
        require("mason-nvim-dap").setup({
            ensure_installed = { "python", "js", "clangd", "lua" }
        })
    end
}
