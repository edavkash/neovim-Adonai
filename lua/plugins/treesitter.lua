return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {  -- Specify individual parsers here
                "vimdoc",
                "lua",
                "vim",
                "javascript",
                "html",
                "tsx",
                "typescript",
                "python",
                "json",
                "powershell",
                "xml",
                "http",
                "graphql",
                "dockerfile",
            },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                disable = {},  -- List of languages to disable
            },
            indent = {
                enable = true,
                disable = {},  -- List of languages to disable
            },
        })
    end,
}

