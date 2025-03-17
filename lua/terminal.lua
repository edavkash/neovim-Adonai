-- Function to toggle the PowerShell terminal
local function toggle_powershell_terminal()
  local terminal_bufnr = vim.g.terminal_bufnr
  local is_terminal_visible = false

  -- Check if terminal buffer exists and is valid
  if terminal_bufnr and vim.api.nvim_buf_is_valid(terminal_bufnr) then
    -- Check if the terminal is currently visible
    for _, win in ipairs(vim.api.nvim_list_wins()) do
      if vim.api.nvim_win_get_buf(win) == terminal_bufnr then
        is_terminal_visible = true
        break
      end
    end

    if is_terminal_visible then
      -- Hide the terminal
      vim.cmd('hide')
    else
      -- Reveal the terminal
      vim.cmd('botright split')
      vim.cmd('buffer ' .. terminal_bufnr)
      vim.cmd('startinsert')
    end
  else
    -- Open a new terminal at the bottom if it doesn't exist
    vim.cmd('botright split')
    vim.cmd('terminal pwsh')
    terminal_bufnr = vim.api.nvim_get_current_buf()
    vim.g.terminal_bufnr = terminal_bufnr
    -- Enter insert mode automatically
    vim.cmd('startinsert')
  end
end

-- Ensure that the terminal enters insert mode and handles Escape key properly
vim.cmd([[
  augroup Terminal
    autocmd!
    autocmd TermOpen * tnoremap <buffer> <Esc> <C-\><C-n>
    autocmd TermOpen * startinsert
  augroup END
]])

-- Create a command to call the toggle function
vim.api.nvim_create_user_command('TogglePowershell', toggle_powershell_terminal, {})

-- Map the command to a key combination (optional)
vim.api.nvim_set_keymap('n', '<leader>t', ':TogglePowershell<CR>', { noremap = true, silent = true })

