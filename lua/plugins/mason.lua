return {
    {
        "williamboman/mason.nvim",
        dependencies = {
            "mfussenegger/nvim-dap",
            "mfussenegger/nvim-lint",
            "williamboman/mason-lspconfig.nvim"
        },
        config = function()
            require("mason").setup()
        end,
    },
    {
        "mfussenegger/nvim-lint",
        config = function()
            require("lint").linters_by_ft = {
                sql = { "sqlfluff" },
            }

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
                capabilities = capabilities,
            })
        end,
    },
    {
        "mfussenegger/nvim-dap",
        config = function()
            local dap = require("dap")
            dap.adapters.gdb = {
                type = "executable",
                command = "gdb",
                args = { "--interpreter=dap", "--eval-command", "set print pretty on" }
            }
            dap.configurations.c = {
                {
                    name = "Launch",
                    type = "gdb",
                    request = "launch",
                    program = function()
                        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                    end,
                    cwd = "${workspaceFolder}",
                    stopAtBeginningOfMainSubprogram = false,
                },
                {
                    name = "Select and attach to process",
                    type = "gdb",
                    request = "attach",
                    program = function()
                        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                    end,
                    pid = function()
                        local name = vim.fn.input('Executable name (filter): ')
                        return require("dap.utils").pick_process({ filter = name })
                    end,
                    cwd = '${workspaceFolder}'
                },
                {
                    name = 'Attach to gdbserver :1234',
                    type = 'gdb',
                    request = 'attach',
                    target = 'localhost:1234',
                    program = function()
                        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                    end,
                    cwd = '${workspaceFolder}'
                },
            }
        end
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
        config = function()
            local dap, dapui = require("dap"), require("dapui")

            dapui.setup()

            -- Open UI automatically on session start
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end

            -- Close UI automatically on session end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end

            -- Optional keybindings
            local map = vim.keymap.set
            local opts = { noremap = true, silent = true }

            vim.keymap.set("n", "<Leader>du", function() dapui.toggle() end, opts)
            vim.keymap.set("n", "<Leader>de", function() dapui.eval() end, opts)
            vim.keymap.set("v", "<Leader>de", function() dapui.eval() end, opts)
        end,
    }
}
