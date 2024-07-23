-- Set tabs and spaces
vim.opt.tabstop = 4       -- Number of visual spaces per TAB
vim.opt.shiftwidth = 4    -- Number of spaces to use for auto-indenting
vim.opt.expandtab = true  -- Use spaces instead of tabs
-- Enable undofile
vim.o.undofile = true

-- Enable line numbers
vim.opt.number = true

--Enable relative number
vim.opt.relativenumber = true

--Enable cursorline
vim.opt.cursorline = true

--Enable ruler
vim.opt.ruler =true

--Enable scrolloff
vim.opt.scrolloff = 5

--Enable side scrolloff
vim.opt.sidescrolloff = 5

--Enable incsearch
vim.opt.incsearch =true

--Enable hlsearch
vim.opt.hlsearch =true

-- Enable syntax highlighting
vim.cmd('syntax enable')

-- Set colorscheme (optional)
--vim.cmd('colorscheme desert')  -- Replace 'desert' with your preferred colorscheme

-- Set auto-indentation
vim.opt.autoindent = true

-- Enable mouse support (optional)
vim.opt.mouse = 'a'

-- Disable swap files
vim.opt.swapfile = false

--vim.opt.showtabline = 2
vim.opt.laststatus = 2

vim.g.floaterm_shell = 'pwsh'
