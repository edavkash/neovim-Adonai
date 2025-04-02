return {
    {
        "mfussenegger/nvim-dap",
        config = function()
            local dap = require('dap')
            dap.adapters.gdb = {
                type = 'executable',
                command = 'gdb',
                args = { '--init-eval-command=set pagination off' }
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
            -- Define the Node.js debug adapter
            dap.adapters.node2 = {
                type = 'executable',
                command = 'node',
                -- Update this path to point to your installed vscode-node-debug2 adapter script
                args = { os.getenv('HOME') .. '/.local/share/node-debug2/out/src/nodeDebug.js' },
            }

            -- Debug configurations for JavaScript and TypeScript
            dap.configurations.javascript = {
                {
                    name = 'Launch Node.js',
                    type = 'node2',
                    request = 'launch',
                    program = '${file}', -- launches the current file
                    cwd = vim.fn.getcwd(),
                    sourceMaps = true,
                    protocol = 'inspector',
                    console = 'integratedTerminal',
                },
                {
                    name = 'Attach to Process',
                    type = 'node2',
                    request = 'attach',
                    processId = require('dap.utils').pick_process,
                    cwd = vim.fn.getcwd(),
                },
            }

            -- For TypeScript files, you can usually use the same configurations:
            dap.configurations.typescript = dap.configurations.javascript
            vim.keymap.set('n', '<leader>nd', function() require('dap').continue() end)
            vim.keymap.set('n', '<leader>tb', function()
                require('dap').toggle_breakpoint()
            end)
        end
    },

    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"
        },
        config = function()
            --vim.keymap.set('n', '<leader>ds', ':lua require("dapui").setup()<CR>', { noremap = true, silent = true })
            --vim.keymap.set('n', '<leader>do', ':lua require("dapui").open()', { noremap = true, silent = true })
            local dap, dapui = require("dap"), require("dapui")
            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end
        end
    }
}
