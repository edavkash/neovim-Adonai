return {
	"nvim-treesitter/nvim-treesitter",
	run = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "lua", "vim", "javascript", "html", "tsx", "typescript", "python", "json" },
			sync_install = false,
			highlight = {
				enable = true,
				disable = { "help" },  -- Disable Treesitter for help files
			},
			indent = {
				enable = true,
				disable = { "help" },  -- Disable Treesitter for help files
			},
		})
	end,
}

