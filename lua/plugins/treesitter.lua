return {
	"nvim-treesitter/nvim-treesitter",
	run = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "lua", "vim", "javascript", "html", "tsx", "typescript", "python", "json" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}


