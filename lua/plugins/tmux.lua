return {
    'alexghergh/nvim-tmux-navigation',
    config = function()
        local nvim_tmux_nav = require('nvim-tmux-navigation')

        nvim_tmux_nav.setup {
            disable_when_zoomed = true
        }
        vim.g.tmux_navigator_no_mappings = 1
        vim.keymap.set('n', '<M-h>', '<Cmd>TmuxNavigateLeft<CR>', { silent = true })
        vim.keymap.set('n', '<M-j>', '<Cmd>TmuxNavigateDown<CR>', { silent = true })
        vim.keymap.set('n', '<M-k>', '<Cmd>TmuxNavigateUp<CR>', { silent = true })
        vim.keymap.set('n', '<M-l>', '<Cmd>TmuxNavigateRight<CR>', { silent = true })
    end
}
