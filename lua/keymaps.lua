--Explore/Netrw keymap
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

--Neo-tree keymap
vim.keymap.set("n", "<leader>nl", ":Neotree filesystem reveal left<CR>")

--fzf keymap
vim.keymap.set("n", "<s-P>", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })

--git_integration keymap
vim.keymap.set("n", "<leader>gh", ":Gitsigns.preview_hunk<CR>", {})

--harpoon.lua keymap
--1. Adding a file in file in harpoon
vim.keymap.set("n", "<leader>af", ':lua require("harpoon.mark").add_file()<CR>', { noremap = true, silent = true })

--2. Toggling (openning/closing) harpoon UI
vim.keymap.set(
<<<<<<< HEAD
	"n",
	"<leader>h",
	':lua require("harpoon.ui").toggle_quick_menu()<CR>',
	{ noremap = true, silent = true }
=======
    "n",
    "<leader>h",
    ':lua require("harpoon.ui").toggle_quick_menu()<CR>',
    { noremap = true, silent = true }
>>>>>>> d6ad35e (latest commit)
)

--3.Navigate to the next bookamrk
vim.keymap.set("n", "<leader><Down>", ':lua require("harpoon.ui").nav_next()<CR>', { noremap = true, silent = true })

--4.Navigate to the previous bookmark
vim.keymap.set("n", "<leader><Up>", ':lua require("harpoon.ui").nav_prev()<CR>', { noremap = true, silent = true })

--5. keymap to open lazygit
vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<CR>", { noremap = true, silent = true })

--6. mason keymap
--show snippet functionality
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})

--exlpain what is happening under the hood
vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, {})

--Run a quick code action on your code like ignoring an error
vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})

--keymap for none_ls used for formatting code
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

--Keymap for telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", function()
<<<<<<< HEAD
	builtin.find_files({cwd = vim.env.HOME})
=======
    builtin.find_files({ cwd = vim.env.HOME })
>>>>>>> d6ad35e (latest commit)
end, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
<<<<<<< HEAD
vim.keymap.set("n", "<leader>fs",function ()
    builtin.git_status({cwd = vim.env.HOME})
=======
vim.keymap.set("n", "<leader>fs", function()
    builtin.git_status({ cwd = vim.env.HOME })
>>>>>>> d6ad35e (latest commit)
end, {})
vim.keymap.set("n", "<leader>fc", builtin.git_commits, {})
vim.keymap.set("n", "<space>fb", builtin.git_branches, {})

--Flaoterm keymap
vim.keymap.set("n", "<leader>fn", function()
<<<<<<< HEAD
	vim.cmd("FloatermToggle")
=======
    vim.cmd("FloatermToggle")
>>>>>>> d6ad35e (latest commit)
end)

--Moving through panes
vim.keymap.set("n", "<space>l", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<space>h", "<C-w>h", { noremap = true, silent = true })

--Opening the treesitter playeground
vim.keymap.set("n", "<leader>i", vim.cmd.InspectTree)
vim.keymap.set("n", "<leader>eq", vim.cmd.EditQuery)
<<<<<<< HEAD
=======

--Formatting code
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- Key mappings for DAP commands
vim.keymap.set("n", "<Leader>b", function()
    require("dap").toggle_breakpoint()
end)
vim.keymap.set("n", "<leader>dr", function()
    require("dap").repl.open()
end, { noremap = true, silent = true, desc = "open repl" })

--[[
vim.keymap.set('n', '<F5>', dap.continue, { noremap = true, silent = true })
vim.keymap.set('n', '<F10>', dap.step_over, { noremap = true, silent = true })
vim.keymap.set('n', '<F11>', dap.step_into, { noremap = true, silent = true })
vim.keymap.set('n', '<F12>', dap.step_out, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>B', function()
  dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>dl', dap.run_last, { noremap = true, silent = true })
<<<<<<< HEAD
]]
--
>>>>>>> d6ad35e (latest commit)
=======
]]--


>>>>>>> 86bb19c (second commit)
