function Stl_filename()
	return vim.fn.expand("%:t")
end

vim.opt.statusline = "%!v:lua.Stl_filename()"


