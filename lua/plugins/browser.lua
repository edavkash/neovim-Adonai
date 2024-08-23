return {
	"voldikss/vim-browser-search",
	config = function()
		vim.keymap.set("n", "<space>e", ":BrowserSearch<CR>", { noremap = true, silent = true })
		vim.keymap.set("v", "<space>e", ":BrowserSearch<CR>", { noremap = true, silent = true })
	end,
}
