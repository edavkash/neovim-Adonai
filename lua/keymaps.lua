--Explore/Netrw keymap
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

--Entering Ex command-line
vim.keymap.set("n", "|", "q:")

--Neo-tree keymap
vim.keymap.set("n", "<leader>nl", ":Neotree filesystem reveal left<CR>")

--formatter for C with the astyle extension plugin
vim.keymap.set("n", "<leader>af", function()
    vim.cmd("silent !astyle --style=kr --suffix=none %")
    vim.cmd("edit!") -- reload the file from disk
end, { desc = "Format C file with astyle" })


--fzf keymap
vim.keymap.set("n", "<s-P>", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })

--git_integration keymap
vim.keymap.set("n", "<leader>gh", ":Gitsigns.preview_hunk<CR>", {})

--harpoon.lua keymap
--1. Adding a file in file in harpoon
vim.keymap.set("n", "<leader>af", ':lua require("harpoon.mark").add_file()<CR>', { noremap = true, silent = true })

--2. Toggling (openning/closing) harpoon UI
vim.keymap.set(
    "n",
    "<leader>h",
    ':lua require("harpoon.ui").toggle_quick_menu()<CR>',
    { noremap = true, silent = true },
    "n",
    "<leader>h",
    ':lua require("harpoon.ui").toggle_quick_menu()<CR>',
    { noremap = true, silent = true },
    "n",
    "<leader>h",
    ':lua require("harpoon.ui").toggle_quick_menu()<CR>',
    { noremap = true, silent = true }
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
--vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

--Keymap for telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", function()
    builtin.find_files({ cwd = vim.env.HOME })
    builtin.find_files({ cwd = vim.env.HOME })
    builtin.find_files({ cwd = vim.env.HOME })
end, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>fs", function()
    builtin.git_status({ cwd = vim.env.HOME })
end, {})
vim.keymap.set("n", "<leader>fc", builtin.git_commits, {})
vim.keymap.set("n", "<space>fb", builtin.git_branches, {})

--Flaoterm keymap
vim.keymap.set("n", "<leader>fn", function()
    vim.cmd("FloatermToggle")
    vim.cmd("FloatermToggle")
    vim.cmd("FloatermToggle")
end)

--Moving through panes
vim.keymap.set("n", "<space>l", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<space>h", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<space>j", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<space>k", "<C-w>k", { noremap = true, silent = true })

--Disabling arrow keys
--vim.keymap.set("n", "<Up>", "<Nop>", opts)
--vim.keymap.set("n", "<Down>", "<Nop>", opts)
--vim.keymap.set("n", "<Left>", "<Nop>", opts)
--vim.keymap.set("n", "<Right>", "<Nop>", opts)
--vim.keymap.set("v", "<Up>", "<Nop>", opts)
--vim.keymap.set("v", "<Down>", "<Nop>", opts)
--vim.keymap.set("v", "<Right>", "<Nop>", opts)
--vim.keymap.set("v", "<Left>", "<Nop>", opts)

--Opening the treesitter playeground
vim.keymap.set("n", "<leader>i", vim.cmd.InspectTree)
vim.keymap.set("n", "<leader>eq", vim.cmd.EditQuery)
--Formatting code
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

--dap-mapping

vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end)
vim.keymap.set('n', '<Leader>dc', function() require('dap').continue() end)

vim.keymap.set({ 'n', 'v' }, '<Leader>dh', function()
    require('dap.ui.widgets').hover()
end)
vim.keymap.set({ 'n', 'v' }, '<Leader>dp', function()
    require('dap.ui.widgets').preview()
end)
vim.keymap.set('n', '<Leader>df', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.frames)
end)
vim.keymap.set('n', '<Leader>ds', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.scopes)
end)
