return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("fzf-lua").setup({})
		vim.keymap.set("n", "<s-P>", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
	end,
}
