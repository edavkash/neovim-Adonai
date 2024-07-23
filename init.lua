local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

--Load settings
require("settings")

-- Map key to open PowerShell terminal at the bottom
--:vim.api.nvim_set_keymap('n', '<leader>t', ':lua OpenPwshTerminal()<CR>', { noremap = true, silent = true })

