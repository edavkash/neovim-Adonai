return {
    "ThePrimeagen/harpoon",
    dependancy = { "nvim-lua/plenary.nvim" },
    config = function()
        vim.keymap.set(
            "n",
            "<leader>af",
            ':lua require("harpoon.mark").add_file()<CR>',
            { noremap = true, silent = true }
        )
        vim.keymap.set(
            "n",
            "<leader>h",
            ':lua require("harpoon.ui").toggle_quick_menu()<CR>',
            { noremap = true, silent = true }
        )
        vim.keymap.set(
            "n",
            "<leader>hn",
            ':lua require("harpoon.ui").nav_next()<CR>',
            { noremap = true, silent = true }
        )
        vim.keymap.set(
            "n",
            "<leader>hp",
            ':lua require("harpoon.ui").nav_prev()<CR>',
            { noremap = true, silent = true }
        )
    end,
}
