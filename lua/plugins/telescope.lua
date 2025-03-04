return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim", "jvgrootveld/telescope-zoxide", "nvim-lua/popup.nvim" },
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
			local t = require("telescope")
			local z_utils = require("telescope._extensions.zoxide.utils")

			-- Configure the extension
			t.setup({
				extensions = {
					zoxide = {
						prompt_title = "[ Walking on the shoulders of TJ ]",
						mappings = {
							default = {
								after_action = function(selection)
									print("Update to (" .. selection.z_score .. ") " .. selection.path)
								end,
							},
							["<C-s>"] = {
								before_action = function(selection)
									print("before C-s")
								end,
								action = function(selection)
									vim.cmd.edit(selection.path)
								end,
							},
							["<C-q>"] = { action = z_utils.create_basic_command("split") },
						},
					},
				},
			})

			-- Load the extension
			t.load_extension("zoxide")

			-- Add a mapping
			vim.keymap.set("n", "<leader>cd", t.extensions.zoxide.list)
		end,
	},
}



