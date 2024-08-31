-- Function to get the current macro recording status
local function get_macro_recording_status()
    local recording_register = vim.fn.reg_recording()
    if recording_register ~= '' then
        return 'Recording @' .. recording_register
    end
    return ''
end

-- Return the lualine configuration
return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup {
            options = {
                icons_enabled = true,
                theme = 'powerline_dark', -- Set theme
                component_separators = { left = '|', right = '|' }, -- Separators between components
                section_separators = { left = '|', right = '|' }, -- section separators
                disabled_filetypes = {
                    statusline = {}, -- Disable for specific filetypes in statusline
                    winbar = {}, -- Disable for specific filetypes in winbar
                },
                ignore_focus = {}, -- Ignore focus for specific filetypes
                always_divide_middle = true, -- Always divide the middle section
                globalstatus = false, -- Do not enable global statusline
                refresh = { -- Refresh rates for different sections
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                },
            },
            sections = {
                lualine_a = {'mode'}, -- Mode section
                lualine_b = {'branch', 'diff', 'diagnostics'}, -- Branch, diff, and diagnostics section
                lualine_c = {'filename'}, -- Filename section
                lualine_x = {'encoding', 'fileformat', 'filetype'}, -- Encoding, file format, and filetype section
                lualine_y = {'progress'}, -- Progress section
                lualine_z = {'location', get_macro_recording_status} -- Location and macro recording status section
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'}, -- Filename section for inactive windows
                lualine_x = {'location'}, -- Location section for inactive windows
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {}, -- No tabline configuration
            winbar = {}, -- No winbar configuration
            inactive_winbar = {}, -- No inactive winbar configuration
            extensions = {} -- No extensions
        }
    end
}

