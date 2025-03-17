return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "mfussenegger/nvim-lint",
        config = function()
            require("lint").linters_by_ft = {
                sql = { "sqlfluff" }, -- You can also use 'sqlint'
            }

            -- Lint on save
            vim.api.nvim_exec(
                [[
              autocmd BufWritePost *.sql lua require('lint').try_lint()
            ]],
                true
            )
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
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
                    "powershell_es",
                    "sqlls",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            lspconfig.harper_ls.setup({
                settings = {
                    ["harper-ls"] = {
                        userDictPath = "~/dict.txt",
                        fileDictPath = "~/.harper/",
                        diagnosticSeverity = "hint",
                        codeActions = {
                            forceStable = true,
                        },
                    },
                },
                capabilities = capabilities,
            })
            lspconfig.clangd.setup({
                capabilities = capabilities,
            })
            lspconfig.ast_grep.setup({
                capabilities = capabilities,
            })
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.ts_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.eslint.setup({
                capabilities = capabilities,
            })
            lspconfig.html.setup({
                capabilities = capabilities,
            })
            lspconfig.cssls.setup({
                capabilities = capabilities,
            })
            lspconfig.pyright.setup({
                capabilities = capabilities,
            })
            lspconfig.quick_lint_js.setup({
                capabilities = capabilities,
            })
            lspconfig.jsonls.setup({
                capabilities = capabilities,
            })
            lspconfig.tailwindcss.setup({
                capabilities = capabilities,
            })
            lspconfig.graphql.setup({
                capabilities = capabilities,
            })
            lspconfig.dockerls.setup({
                capabilities = capabilities,
            })
            lspconfig.docker_compose_language_service.setup({
                capabilities = capabilities,
            })
            lspconfig.sqlls.setup({
                capabilities = capabilities,
            })
            lspconfig.bashls.setup({
                capabilities=capabilities,
            })
        end,
    },
}
