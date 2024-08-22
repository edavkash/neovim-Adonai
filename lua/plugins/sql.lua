return {
	"kristijanhusak/vim-dadbod-ui",
	dependencies = {
		{ "tpope/vim-dadbod", lazy = true },
		{ "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
	},
	cmd = {
		"DBUI",
		"DBUIToggle",
		"DBUIAddConnection",
		"DBUIFindBuffer",
	},
	init = function()
		vim.g.db_ui_use_nerd_fonts = 1
		vim.g.db_ui_auto_execute_table_helpers = 1
		vim.g.db_ui_save_location = "~/.config/nvim/db_ui"
		--vim.g.db = "postgresql://user:password@localhost:5432/dbname"
	end,
	config = function()
		-- Automatically add connection when opening DBUI
		--vim.cmd('autocmd FileType dbui lua vim.cmd("DBUIAddConnection " .. vim.g.db)')
	end,
}
