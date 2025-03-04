[#](#) Neovim setup 
This configuration work best for (pwsh) powershell and should be cloned at the AppData/Local directory, but  if you are a mac or Linux user I will recommend you to create .config directory and then clone it their. 

Paste the following in init.lua file

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
require("terminal")
require("keymaps")
require("statusline")



# Window

git clone https://github.com/yourusername/your-repo.git $env:LOCALAPPDATA\nvim

# Macos & Linux

mkdir -p ~/.config
git clone https://github.com/yourusername/your-repo.git ~/.config/nvim

# A little tip

The colorscheme

I am using the kanagawa colorscheme, but if you prefer you could change directory from the plugins directoy to the colorscheme directory and pick a colorscheme of your choice don't forget to check the setting.lua file in the lua directory and uncomment or replace the scheme/theme with your preferred one. 

Here is the link to other colorscheme you might be interested in head here https://github.com/topics/neovim-colorscheme

# Thank you
