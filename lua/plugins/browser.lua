return {
	"voldikss/vim-browser-search",
	config = function()
		vim.keymap.set("n", "<space>b", ":BrowserSearch<CR>", { noremap = true, silent = true })
		vim.keymap.set("v", "<space>b", ":BrowserSearch<CR>", { noremap = true, silent = true })
	end,
}
