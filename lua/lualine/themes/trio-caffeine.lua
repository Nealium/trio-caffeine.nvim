local palette = require("trio-caffeine.palette")

local trio_caffine = {}

trio_caffine.normal = {
    a = { fg = palette.white_bright, bg = palette.brown8, gui = "bold" },
    b = { fg = palette.brown4, bg = palette.grey1 },
    c = { fg = palette.white_bright, bg = palette.brown8 },
    y = { fg = palette.brown4, bg = palette.grey1 },
}

trio_caffine.insert = {
    a = { fg = palette.black, bg = palette.green, gui = "bold" },
    b = { fg = palette.green, bg = palette.grey1 },
    y = { fg = palette.brown4, bg = palette.grey1 },
}

trio_caffine.visual = {
    a = { fg = palette.black, bg = palette.yellow_light2, gui = "bold" },
    b = { fg = palette.yellow_light2, bg = palette.grey1 },
    y = { fg = palette.brown4, bg = palette.grey1 },
}

trio_caffine.replace = {
    a = { fg = palette.black, bg = palette.red, gui = "bold" },
    b = { fg = palette.red, bg = palette.grey1 },
    y = { fg = palette.brown4, bg = palette.grey1 },
}

trio_caffine.command = {
    a = { fg = palette.black, bg = palette.gold, gui = "bold" },
    b = { fg = palette.gold, bg = palette.grey1 },
    y = { fg = palette.brown4, bg = palette.grey1 },
}

trio_caffine.inactive = {
    a = { fg = palette.white, bg = palette.grey2, gui = "bold" },
    b = { fg = palette.white, bg = palette.grey2 },
    c = { fg = palette.white, bg = palette.grey2 },
}

return trio_caffine
