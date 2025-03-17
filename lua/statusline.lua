-- Function to map mode codes to full names
function _G.StatusLineMode()
    local mode_map = {
        ['n'] = '[NORMAL]',
        ['i'] = '[INSERT]',
        ['v'] = '[VISUAL]',
        ['V'] = '[V-LINE]',
        [''] = '[V-BLOCK]',
        ['R'] = '[REPLACE]',
        ['c'] = '[COMMAND]',
    }
    local mode_code = vim.fn.mode()
    return mode_map[mode_code] or mode_code
end

-- Set the statusline to dynamically display the mode on the left, filename in the middle, and right-aligned info
vim.o.statusline = "%#StatusLineMode# %{v:lua.StatusLineMode()} " .. -- Mode part
    "%#StatusLine#%=%f%=" ..                                         -- Filename in the center
    "%l/%L - %c%p%%"                                                 -- Line, column, and percentage info on the right

-- Highlight group for the mode (white text on black background)
vim.cmd [[
  highlight StatusLineMode guifg=#ffffff guibg=#000000
]]

-- Highlight group for the filename (blue text on black background)
vim.cmd [[
  highlight StatusLineFileName guifg=#005f87 guibg=#000000
]]

-- Highlight group for the rest of the statusline (white text on blue background)
vim.cmd [[
  highlight StatusLine guifg=#ffffff guibg=#005f87
]]

-- Inactive statusline (white text on dark blue background)
vim.cmd [[
  highlight StatusLineNC guifg=#ffffff guibg=#003366
]]

-- Tabline configuration: use blue for the tabline
vim.cmd [[
  highlight TabLine guifg=#ffffff guibg=#005f87
  highlight TabLineFill guifg=#ffffff guibg=#005f87
  highlight TabLineSel guifg=#ffffff guibg=#000000
]]
