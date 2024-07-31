return {
	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").setup({
			compile = false, -- Enable compiling the colorscheme
			undercurl = true, -- Enable undercurls
			commentStyle = { italic = true }, -- Italicize comments
			keywordStyle = { italic = true }, -- Italicize keywords
			statementStyle = { bold = true }, -- Bold statements
			transparent = false, -- Do not set background color
			dimInactive = false, -- Do not dim inactive windows
			terminalColors = true, -- Define terminal colors
			colors = {
				palette = {
					sumiInk0 = "#000000", -- Custom black color
					fujiWhite = "#FFFFFF", -- Custom white color
				},
				theme = {
					wave = {
						ui = {
							float = {
								bg = "none", -- No background for floating windows
							},
						},
					},
					dragon = {
						syn = {
							parameter = "yellow", -- Yellow color for parameters in dragon theme
						},
					},
					all = {
						ui = {
							bg_gutter = "none", -- No background for gutter
						},
					},
				},
			},
			overrides = function(colors) -- Additional highlight overrides
				return {}
			end,
			theme = "dragon", -- Default theme
			background = { -- Map 'background' option to theme
				dark = "dragon", -- Dark mode theme
				light = "lotus", -- Light mode theme
			},
		})

		-- Set the colorscheme
	    --vim.cmd("colorscheme kanagawa-wave")
        vim.cmd("colorscheme kanagawa-dragon")
		--vim.cmd("colorscheme kanagawa-lotus")
	end,
}

