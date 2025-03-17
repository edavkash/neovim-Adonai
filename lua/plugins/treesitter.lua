return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
                "gitcommit",
				"vimdoc",
				"lua",
				"vim",
				"javascript",
				"html",
				"tsx",
				"typescript",
				"python",
				"json",
				"powershell",
				"xml",
				"http",
				"graphql",
				"dockerfile",
                "sql",
                "git_rebase"
			},
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				disable = {},
			},
			indent = {
				enable = true,
				disable = {},
			},
		})
	end,
}
