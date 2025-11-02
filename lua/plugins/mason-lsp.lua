return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "ast_grep",
            "bashls",
            "clangd",
            "harper_ls",
            "lua_ls",
            "ts_ls",
            "eslint",
            "html",
            "cssls",
            "pyright",
            "quick_lint_js",
            "jsonls",
            "tailwindcss",
            "graphql",
            "dockerls",
            "docker_compose_language_service",
            "sqlls",
            "asm-lsp"
        },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
};
