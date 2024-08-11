return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"tsserver",
					"html",
					"cssls",
					"pyright",
					"quick_lint_js",
                    "jsonls",
					"tailwindcss",
                    "graphql",
					"powershell_es",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local mason_registry = require("mason-registry")
			local powershell_package = mason_registry.get_package("powershell-editor-services")
			local bundle_path = powershell_package:get_install_path()

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			}) -- Ctrl+X+O
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})
			lspconfig.quick_lint_js.setup({
				capabilities = capabilities,
			})
            lspconfig.jsonls.setup({
                capabilities = capabilities,
            })
			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
			})
			lspconfig.powershell_es.setup({
				bundle_path = bundle_path,
				shell = "pwsh", -- or "powershell" depending on your environment
				capabilities = capabilities,
				filetypes = { "ps1", "psm1", "psd1" },
			})
		end,
	},
}

