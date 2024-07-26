-- Set tabs and spaces
vim.opt.tabstop = 4 -- Number of visual spaces per TAB
vim.opt.shiftwidth = 4 -- Number of spaces to use for auto-indenting
vim.opt.expandtab = true -- Use spaces instead of tabs
-- Enable undofile
vim.o.undofile = true

-- Enable line numbers
vim.opt.number = true

--Enable relative number
vim.opt.relativenumber = true

--Enable cursorline
vim.opt.cursorline = true

--Enable ruler
vim.opt.ruler = true

--Enable scrolloff
vim.opt.scrolloff = 5

--Enable side scrolloff
vim.opt.sidescrolloff = 5

--Enable incsearch
vim.opt.incsearch = true

--Enable hlsearch
vim.opt.hlsearch = true

-- Enable syntax highlighting
vim.cmd("syntax enable")

-- Set colorscheme (optional)
--vim.cmd('colorscheme desert')  -- Replace 'desert' with your preferred colorscheme

-- Set auto-indentation
vim.opt.autoindent = true

-- Enable mouse support (optional)
vim.opt.mouse = "a"

-- Disable swap files
vim.opt.swapfile = false

--vim.opt.showtabline = 2
vim.opt.laststatus = 2

vim.g.floaterm_shell = "pwsh"

vim.cmd([[
  autocmd FileType help syntax on
  autocmd FileType help setlocal syntax=help
]])

vim.cmd('filetype plugin indent on')

-- A terminal focus function
-- Automatically enter insert mode when opening a terminal
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  command = "startinsert",
})

--transparent background
function Font_color(color)
    vim.cmd.colorscheme(color) -- Apply the color scheme
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) -- Set Normal background to none
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) -- Set NormalFloat background to none
end

-- Call the function with a specific color scheme
Font_color('tokyonight')

--Explore/Netrw keymap 
vim.keymap.set('n','<leader>ex',vim.cmd.Ex)
