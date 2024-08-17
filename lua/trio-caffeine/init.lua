local M = {}

function M.setup(opts)
    -- TODO(<Neal>): any type of config
    opts = opts or {}
end

function M.colorscheme()
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.opt.termguicolors = true
    vim.g.colors_name = "trio-caffeine"

    local theme = require("trio-caffeine.theme").get()

    for group, color in pairs(theme) do
        if type(color) == "table" then
            vim.api.nvim_set_hl(0, group, color)
        else
            vim.api.nvim_set_hl(0, group, { link = color })
        end
    end
end

return M
