return
{
    "eduardo-antunes/plainline",
    config = function()
        require("plainline").setup({

            sections = {
                left  = { "mode", "branch", "name", "diagnostics" },
                right = { "macro", "filetype", "fileformat", "percentage", "position" },
            },
            inactive_sections = {
                left  = { "path" },
                right = { "percentage" },
            },
            separator = " │ ",
            formatter = function(component)
                return string.format(" %s ", component)
            end
        })
    end
};
