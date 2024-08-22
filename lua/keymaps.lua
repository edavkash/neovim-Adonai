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
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

--Keymap for telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

--Flaoterm keymap
vim.keymap.set("n", "<leader>fn", function()
    vim.cmd("FloatermToggle")
end)

--Moving through panes
vim.keymap.set("n", "<space>l", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<space>h", "<C-w>h", { noremap = true, silent = true })
