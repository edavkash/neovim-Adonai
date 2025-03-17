return {
    "mfussenegger/nvim-dap",
    dependencies = { "nvim-neotest/nvim-nio", "rcarriga/nvim-dap-ui" },
<<<<<<< HEAD
=======
    config = function()
        local dap = require("dap")

        -- Path to the Python interpreter in the virtual environment
        local venv_path = vim.fn.expand("~/.virtualenvs/debugpy") -- Adjust if needed

        dap.adapters.python = {
            type = "executable",
            command = venv_path .. "\\Scripts\\python.exe", -- Windows path to the Python interpreter
            args = { "-m", "debugpy.adapter" },
        }

        dap.configurations.python = {
            {
                type = "python",
                request = "launch",
                name = "Launch file",
                program = "${file}",             -- Launch the current file
                pythonPath = function()
                    return venv_path .. "\\Scripts\\python.exe" -- Windows path to the Python interpreter
                end,
            },
        }

        -- Set up DAP UI with nvim-dap-ui
        local dapui = require("dapui")
        dapui.setup({
            controls = {
                element = "repl",
                enabled = true,
            },
            layouts = {
                {
                    elements = {
                        "scopes",
                        "breakpoints",
                        "stacks",
                        "watches",
                    },
                    size = 40,
                    position = "left",
                },
                {
                    elements = {
                        "repl",
                        "console",
                    },
                    size = 10,
                    position = "bottom",
                },
            },
        })

        -- Auto open and close DAP UI
        dap.listeners.after.event_initialized["dapui_config"] = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close()
        end
        dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close()
        end

        -- Customize breakpoint sign
        vim.fn.sign_define("DapBreakpoint", { text = "🛑", texthl = "", linehl = "", numhl = "" })
    end,
>>>>>>> 14cc39b1f492a2f784fa4a524f5ba04c8fd8afc8
}
