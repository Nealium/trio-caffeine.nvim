local M = {}

function M.get()
    local p = require("trio-caffeine.palette")

    return {
        ---- :help highlight-default -------------------------------------------

        Normal = { fg = p.white, bg = p.black },
        NormalFloat = { bg = p.black },
        FloatTitle = { fg = p.white_bright },
        FloatBorder = { fg = p.white_bright },

        Cursor = { fg = p.black, bg = p.brown2 },
        ColorColumn = { bg = p.grey1 },
        CursorColumn = "ColorColumn",
        CursorLine = { bg = nil },
        VertSplit = { fg = p.grey2, bg = p.black },
        WinSeparator = { fg = p.grey2, bg = p.black },

        LineNr = { fg = p.brown8 },
        CursorLineNr = { fg = p.yellow_light1, bold = true },
        Folded = { bg = p.grey2 },
        FoldColumn = { bg = p.grey2 },
        SignColumn = { fg = p.brown6 },
        Pmenu = { fg = p.white, bg = p.grey2 },
        PmenuSel = { fg = p.green, bg = p.brown1 },
        StatusLine = { fg = p.white_bright, bg = p.brown8 },
        StatusLineNC = { fg = p.brown6, bg = p.grey2 },

        WildMenu = { fg = p.brown3 },
        TabLine = { fg = p.brown6, bg = p.grey2 },
        TabLineFill = { fg = p.brown6, bg = p.grey2 },
        TabLineSel = { fg = p.white, bg = p.grey2 },

        MatchParen = {
            fg = p.black,
            bg = p.grey_light1,
            underline = true,
            bold = true,
        },
        Search = { fg = p.brown6, bg = p.orange2 },
        Substitute = { bg = p.orange2, bold = true },

        QuickFixLine = { underline = true },
        qfLineNr = { fg = p.white },
        qfError = { fg = p.red },
        qfWarning = { fg = p.yellow },
        qfSeparator = { fg = p.grey_light1 },
        qfSeparator2 = { fg = p.grey_light1 },

        IncSearch = { fg = p.grey2, bg = p.orange1 },
        Visual = { bg = p.brown8 },
        VisualNOS = { fg = p.brown3 },
        Conceal = { fg = p.orange3 },
        Whitespace = { fg = p.grey_light1 },
        NonText = { fg = p.grey_light1 },
        SpecialKey = { fg = p.grey_light1 },
        Directory = { fg = p.green },
        Title = { fg = p.orange3 },
        ErrorMsg = { fg = p.brown3 },
        ModeMsg = { fg = p.brown },
        MoreMsg = { fg = p.brown },
        WarningMsg = { fg = p.yellow },
        Question = { fg = p.orange3 },

        ---- :help lspconfig-highlight -----------------------------------------
        LspInfoBorder = { fg = p.white_bright },

        ---- :help :diff -------------------------------------------------------
        DiffAdd = { bg = p.grey2 },
        DiffChange = { bg = p.grey2 },
        DiffDelete = { fg = p.red, bg = p.grey2 },
        DiffText = { bg = p.grey2 },
        DiffAdded = { bg = p.grey2 },
        DiffFile = { bg = p.grey2 },
        DiffNewFile = { bg = p.grey2 },
        DiffLine = { bg = p.grey2 },
        DiffRemoved = { bg = p.grey2 },

        ---- :help spell -------------------------------------------------------

        SpellBad = { sp = p.red, undercurl = true },
        SpellCap = { sp = p.teal, undercurl = true },
        SpellLocal = { sp = p.yellow_light2, undercurl = true },
        SpellRare = { sp = p.aquamarine, undercurl = true },

        ---- :help group-name -------------------------------------------------

        Comment = { fg = p.grey_light1, italic = true },
        Identifier = { fg = p.white_bright },
        Function = { fg = p.blue },
        Constant = { fg = p.orange4 },
        String = { fg = p.green },
        Character = { fg = p.brown3 },
        Number = { fg = p.yellow },
        Boolean = { fg = p.yellow },

        Statement = { fg = p.white_bright },
        Conditional = { fg = p.orange1 },
        Repeat = { fg = p.gold },
        Label = { fg = p.orange2 },
        Operator = { fg = p.white },
        Keyword = { fg = p.orange1 },
        Exception = { fg = p.red },

        PreProc = { fg = p.orange2 },
        Include = { fg = p.gold },
        Define = { fg = p.brown7 },
        Macro = { fg = p.brown3 },
        PreCondit = { fg = p.brown7 },

        Type = { fg = p.grey_light2 },
        StorageClass = { fg = p.brown5 },
        Structure = { fg = p.blue },

        Typedef = { fg = p.orange2 },

        Special = { fg = p.brown8 },
        SpecialChar = { fg = p.brown4 },
        Tag = { fg = p.orange2 },
        Delimiter = { fg = p.white },
        Debug = { fg = p.brown3 },

        Underlined = { fg = p.brown3, underline = true },
        Bold = { bold = true },
        Italic = { italic = true },

        Ignore = { fg = p.white_light1 },
        Error = { bg = p.red },
        Todo = { fg = p.orange2, italic = true, bold = true },

        -- links to comment, yet i don't want code examples to be italic, only
        -- comments and documentation
        helpExample = { italic = false },

        ---- external plugin ---------------------------------------------------
        GrepperQuery = "Normal",

        fugitiveSymbolicRef = { fg = p.white_bright, bold = true },
        fugitiveHeader = { fg = p.orange2, bold = true },
        fugitiveUnstagedModifier = { fg = p.brown, bold = true },

        fugitiveUnstagedHeading = { fg = p.yellow, bold = true },

        ---- :help nvim-treesitter-highlights ----------------------------------

        -- ["@boolean"] = { fg = p.yellow},
        -- ["@number"] = { fg = p.yellow},
        -- ["@number.float"] = { fg = p.yellow},

        -- ["@character"] = {},
        -- ["@character.special"] = {},

        -- ["@string"] = {},
        ["@string.documentation"] = {
            fg = p.brown1,
            nocombine = true,
            italic = true,
        },

        -- NOTE: Haven't tested any of these
        ["@string.escape"] = { fg = p.white },
        ["@string.regexp"] = { fg = p.white_light1 },
        ["@string.special"] = { fg = p.teal },
        ["@string.special.symbol"] = { fg = p.gold },
        ["@string.special.path"] = "String",
        ["@string.special.url"] = "@string.special.path",

        -- ["@keyword"] = {},
        ["@keyword.conditional"] = { fg = p.orange1 },
        ["@keyword.directive"] = "PreProc",
        ["@keyword.exception"] = { fg = p.red },
        ["@keyword.import"] = { fg = p.orange1 },
        ["@keyword.storage"] = { fg = p.gold },

        ["@constant"] = "Identifier",
        ["@constant.builtin"] = "Constant",
        ["@constant.macro"] = "Constant",

        ["@module"] = "Identifier",
        ["@module.builtin"] = "@module",

        ["@variable"] = "Identifier",
        ["@variable.builtin"] = "@string.special.symbol",
        ["@variable.parameter"] = { fg = p.yellow },
        -- ["@variable.member"] = {},

        -- -- ["@type"] = {},
        ["@type.builtin"] = { fg = p.gold },
        ["@type.qualifier"] = "Statement",

        -- ["@attribute"] = {},
        -- ["@property"] = {},

        -- ["@function"] = {}
        ["@function.builtin"] = { fg = p.gold },
        ["@function.method"] = { fg = p.white },
        ["@function.call"] = { fg = p.white },

        ["@constructor"] = { fg = p.white },

        -- ["@punctuation"] = {}
        ["@punctuation.delimiter"] = { fg = p.brown4 },
        ["@punctuation.special"] = { fg = p.brown4 },

        ["@comment"] = { fg = p.grey_light1, italic = true },
        ["@comment.documentation"] = {
            fg = p.brown1,
            nocombine = true,
            italic = true,
        },
        ["@comment.error"] = { fg = p.red, italic = true, bold = true },
        ["@comment.note"] = { fg = p.teal, italic = true, bold = true },
        ["@comment.todo"] = "Todo",
        ["@comment.warning"] = { fg = p.yellow, italic = true, bold = true },

        -- ["@markup"] = {},
        ["@markup.heading"] = { fg = p.orange3, bold = true },
        ["@markup.heading.1"] = { fg = p.orange1, bold = true },
        ["@markup.heading.2"] = { fg = p.orange2, bold = true },
        ["@markup.heading.3"] = { fg = p.orange3, bold = true },
        ["@markup.heading.4"] = { fg = p.orange4, bold = true },
        ["@markup.heading.5"] = { fg = p.orange4, bold = true },
        ["@markup.heading.6"] = { fg = p.orange4, bold = true },

        ["@markup.italic"] = { italic = true },
        ["@markup.strong"] = { bold = true },
        ["@markup.strike"] = { strikethrough = true },
        ["@markup.strikethrough"] = { strikethrough = true },
        ["@markup.underline"] = { underline = true },
        ["@markup.quote"] = "Normal",
        ["@markup.link"] = { underline = true },
        ["@markup.list"] = "Delimiter",
        ["@markup.math"] = { fg = p.gold },
        -- ["@markup.environment"] = {},
        ["@markup.link.label"] = { fg = p.brown2 },
        ["@markup.link.url"] = { fg = p.brown2 },
        ["@markup.raw"] = { fg = p.green, bg = p.grey1 },
        ["@markup.raw.block"] = { fg = p.gold, bg = p.grey1 },
        ["@markup.list.checked"] = { fg = p.green },
        ["@markup.list.unchecked"] = { fg = p.white_bright },

        ["@diff.plus"] = "DiffAdd",
        ["@diff.minus"] = "DiffDelete",
        ["@diff.delta"] = "DiffChange",

        ["@tag"] = { fg = p.white },
        ["@tag.attribute"] = { fg = p.yellow },
        ["@tag.delimiter"] = "Delimiter",

        ---- language specific -------------------------------------------------

        --- Bash
        ["@variable.parameter.bash"] = { fg = p.white },

        --- Javascript
        ["@keyword.function.javascript"] = { fg = p.brown4 },
        ["@keyword.function.typescript"] = { fg = p.brown4 },

        --- Typescript
        ["@function.method.tsx"] = { fg = p.blue },

        --- Python
        ["@attribute.python"] = { fg = p.grey_light2 },

        --- Django
        ["@punctuation.bracket.htmldjango"] = {},
        ["@function.htmldjango"] = { fg = p.white_bright },
        ["@variable.htmldjango"] = { fg = p.gold },
        ["@string.function.htmldjango"] = { fg = p.orange3 },

        --- CSS
        ["@tag.css"] = { fg = p.white_bright },
        ["@property.css"] = { fg = p.brown7 },
        ["@constant.css"] = { fg = p.white_bright, bold = true },
        ["@type.css"] = { fg = p.white },
        ["@type.qualifier.css"] = { fg = p.orange1 },
        ["@function.css"] = { fg = p.white_light1 },
        ["@attribute.css"] = { fg = p.orange1 },

        ---- custom queries ----------------------------------------------------

        --- General
        ["@constant.builtin.none"] = "Boolean",
        ["@variable.builtin.object"] = "Function",

        --- Python
        ["@callfrom.python"] = { fg = p.beige },
        ["@callfromself.python"] = "Function",
        ["@type.definition.name"] = "Function",
        ["@type.definition.method"] = "Function",
        ["@type.definition.method.parameters"] = "@variable.parameter",

        --- Javascript
        ["@function.method.javascript"] = "Function",
        ["@constructor.javascript"] = "Function",
        ["@function.method.typescript"] = "Function",
        ["@constructor.typescript"] = "Function",
        ["@keyword.type"] = { fg = p.gold },
        ["@keyword.class"] = { fg = p.brown4 },
        ["@function.method.call.builtin"] = { fg = p.gold },
        ["@variable.builtin.global"] = "Type",
        ["@variable.builtin.node"] = { fg = p.gold },
        ["@variable.builtin.exception"] = "Exception",

        ["@function.call.jquery"] = "Function",
        ["@function.method.call.bind"] = { fg = p.gold },
        ["@function.method.call.jquery"] = "Function",
        ["@function.method.call.jquery.css"] = "Normal",
        ["@function.method.call.jquery.misc"] = { fg = p.gold },
        ["@function.method.call.jquery.traversing"] = { fg = p.gold },
        ["@function.method.call.console"] = { fg = p.blue },
        ["@function.method.call.console.error"] = { fg = p.red },
        ["@function.method.call.console.warn"] = { fg = p.yellow },

        ---- :help diagnostic-highlight ----------------------------------------

        DiagnosticError = { fg = p.red },
        DiagnosticWarn = { fg = p.yellow_light2 },
        DiagnosticInfo = { fg = p.teal },
        DiagnosticHint = { fg = p.aquamarine },
        DiagnosticOk = { fg = p.green },
        DiagnosticUnderlineError = { undercurl = true, sp = p.red },
        DiagnosticUnderlineWarn = { undercurl = true, sp = p.yellow_light2 },
        DiagnosticUnderlineHint = { undercurl = true, sp = p.aquamarine },
        DiagnosticUnderlineInfo = { undercurl = true, sp = p.orange3 },
        DiagnosticUnderlineOk = { undercurl = true, sp = p.green },
        DiagnosticDeprecated = { undercurl = true, sp = p.brown3 },
        DiagnosticUnnecessary = { fg = p.orange2, undercurl = true },

        ---- :help lsp-highlight -----------------------------------------------

        LspReferenceText = "Visual",
        LspReferenceRead = "Visual",
        LspReferenceWrite = "Visual",

        ---- :help lsp-semantic-highlight --------------------------------------

        ["@lsp.type.class"] = "Structure",
        ["@lsp.type.decorator"] = "Function",
        ["@lsp.type.enum"] = "Structure",
        ["@lsp.type.enumMember"] = "Constant",
        ["@lsp.type.function"] = {},
        ["@lsp.type.interface"] = "Structure",
        ["@lsp.type.macro"] = "Function",
        ["@lsp.type.method"] = "Function",
        -- ["@lsp.type.namespace"] = {},
        ["@lsp.type.parameter"] = { fg = p.yellow },
        ["@lsp.type.property"] = "Identifier",
        ["@lsp.type.struct"] = "Structure",
        ["@lsp.type.type"] = "Type",
        ["@lsp.type.typeParameter"] = "TypeDef",
        ["@lsp.type.variable"] = "Identifier",

        -- NOTE: using this or commenting it out seems to override the
        -- note/warn/etc comment highlights 🤷
        ["@lsp.type.comment"] = {},

        ---- lsp overrides -----------------------------------------------------
        ["@lsp.type.parameter.typescript"] = {},
        ["@lsp.typemod.member.defaultLibrary.typescript"] = "Function",

        ---- netrw -------------------------------------------------------------

        netrwPlain = "Normal",
        netrwClassify = "String",
        netrwTreeBar = "Delimiter",
        netrwList = { fg = p.white_bright },
        netrwHelpCmd = "String",
        netrwExe = { fg = p.red },
        netrwSymLink = { fg = p.teal },
        netrwLink = "String",

        ---- :Telescope highlights (external plugin) ---------------------------

        TelescopeSelectionCaret = { fg = p.white_bright },
        TelescopeSelection = { fg = p.white_bright },
        TelescopeMatching = "String",
        TelescopePromptCounter = "String",

        ---- :h gitsigns (external plugin) -------------------------------------

        GitSignsAdd = { fg = p.green },
        GitSignsChange = { fg = p.brown3 },
        GitSignsDelete = { fg = p.brown3 },
        GitSignsCurrentLineBlame = { fg = p.orange3 },

        SignifySignAdd = "GitSignsAdd",
        SignifySignChange = "GitSignsChange",
        SignifySignDelete = "GitSignsDelete",

        --- :h render-markdown-colors (external plugin) ------------------------
        ["RenderMarkdownH1Bg"] = { fg = p.orange1, bg = p.grey2 },
        ["RenderMarkdownH2Bg"] = { fg = p.orange2, bg = p.grey2 },
        ["RenderMarkdownH3Bg"] = { fg = p.orange3, bg = p.grey2 },
        ["RenderMarkdownH4Bg"] = { fg = p.orange4, bg = p.grey2 },
        ["RenderMarkdownH5Bg"] = { fg = p.orange4, bg = p.grey2 },
        ["RenderMarkdownH6Bg"] = { fg = p.orange4, bg = p.grey2 },
        ["RenderMarkdownCode"] = { bg = p.grey1 },
        ["RenderMarkdownQuote"] = { bg = p.grey1 },
        ["RenderMarkdownBullet"] = { fg = p.grey_light2 },
        ["RenderMarkdownDash"] = { fg = p.grey_light1 },
        ["RenderMarkdownTodo"] = { fg = p.gold },
        ["RenderMarkdownLink"] = { fg = p.white_bright },

        --- dict-popup (external plugin) ---------------------------------------
        noMatchesHeader = { fg = p.orange3 },
        noMatchesWord = { fg = p.white_bright },
        noMatchesOrigin = { fg = p.orange2 },
        matchesHeader = { fg = p.orange3 },
        matchesCount = { fg = p.orange3 },
        matchesLabel = { fg = p.orange3 },
        matchesWord = { fg = p.white_bright },
        matchOrigin = { fg = p.orange2 },
        word = { fg = p.white_bright },
        wordType = { fg = p.orange4 },
        wordPronounce = { fg = p.white_light1 },
        otherWord = { fg = p.brown7 },
        jargonOtherWord = { fg = p.brown7 },
        detailsLabel = { fg = p.orange3 },
        detailsKeyword = {
            fg = p.orange2,
            bg = p.grey2,
            italic = true,
            bold = true,
        },
        detailsSubLabel = { fg = p.orange2 },
        textSource = { fg = p.grey_light1, italic = true },
        quoteSource = { fg = p.brown7 },
        jargonLabel = { fg = p.orange3 },
    }
end

return M
