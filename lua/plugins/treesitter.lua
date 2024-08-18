return {
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
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
                "dockerfile"
            },
            --auto_install = true,
            sync_install = false,
            highlight = {
                enable = true,
                disable = { "help" }, -- Disable Treesitter for help files
            },
            indent = {
                enable = true,
                disable = { "help" }, -- Disable Treesitter for help files
            },
        })
    end,
}
