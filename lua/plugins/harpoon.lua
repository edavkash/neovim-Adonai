return {
	"ThePrimeagen/harpoon",
	dependancy = { "nvim-lua/plenary.nvim" },
	config = function()
		require("harpoon").setup({
			menu = {
				width = vim.api.nvim_win_get_width(0) - 4,
			},
		})
		vim.cmd("highlight! HarpoonInactive guibg=NONE guifg=#63698c")
		vim.cmd("highlight! HarpoonActive guibg=NONE guifg=white")
		vim.cmd("highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7")
		vim.cmd("highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7")
		vim.cmd("highlight! TabLineFill guibg=NONE guifg=white")
	end,
}
