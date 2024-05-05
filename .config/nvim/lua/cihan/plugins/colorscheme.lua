-- return {
--   {
--     "ellisonleao/gruvbox.nvim",
--     priority = 1000,
--     config = function()
--       local gruvbox = require("Comment")
--       gruvbox.setup({
--         undercurl = true,
--         underline = false,
--         bold = false,
--         italic = {
--           strings = false,
--           comments = false,
--           operators = false,
--           folds = false,
--         },
--         strikethrough = true,
--         invert_selection = false,
--         invert_signs = false,
--         invert_tabline = false,
--         invert_intend_guides = false,
--         inverse = true,
--         contrast = "hard",
--         overrides = {},
--         dim_inactive = false,
--       })
--       G.cmd("colorscheme gruvbox")
--       -- general
--       G.color(0, "Normal", { bg = Colors.none })
--       G.color(0, "NormalFloat", { bg = Colors.none })
--       G.color(0, "FloatBorder", { fg = Colors.grey, bg = Colors.none })
--       G.color(0, "Error", { fg = Colors.red, bg = Colors.background })
--       G.color(0, "StatusLine", {})
--       G.color(0, "StatusLineNC", { bg = Colors.background })
--       G.color(0, "WinBar", { bg = Colors.background })
--       G.color(0, "WinBarNC", { bg = Colors.background })
--       G.color(0, "SignColumn", {})
--       G.color(0, "WinSeparator", { fg = Colors.black, bg = Colors.none })
--       G.color(0, "VertSplit", { fg = Colors.black })
--       G.color(0, "MatchParen", { fg = Colors.zero, bg = Colors.white })
--       G.color(0, "CursorLine", { bg = Colors.black })
--       G.color(0, "CursorLineNr", { fg = Colors.green, bg = Colors.black })
--       --plugins
--       G.color(0, "TreesitterContextLineNumber", { fg = Colors.ash })
--       G.color(0, "LspInfoBorder", { fg = Colors.grey })
--       G.color(0, "DiagnosticVirtualTextError", { fg = Colors.red })
--       G.color(0, "DiagnosticVirtualTextWarn", { fg = Colors.green })
--       G.color(0, "DiagnosticVirtualTextInfo", { fg = Colors.green })
--       G.color(0, "DiagnosticVirtualTextHint", { fg = Colors.green })
--       G.color(0, "DiagnosticSignError", { fg = Colors.red })
--       G.color(0, "DiagnosticSignWarn", { fg = Colors.green })
--       G.color(0, "DiagnosticSignInfo", { fg = Colors.green })
--       G.color(0, "DiagnosticSignHint", { fg = Colors.green })
--       G.color(0, "GitSignsAdd", { fg = Colors.green })
--       G.color(0, "GitSignsChange", { fg = Colors.yellow })
--       G.color(0, "GitSignsDelete", { fg = Colors.red })
--       G.color(0, "NvimTreeNormal", { fg = Colors.white })
--       G.color(0, "NvimTreeIndentMarker", { fg = Colors.black })
--       G.color(0, "NvimTreeImageFile", { fg = Colors.white })
--       G.color(0, "NvimTreeSpecialFile", { fg = Colors.white })
--       G.color(0, "NvimTreeExecFile", { fg = Colors.white })
--       G.color(0, "NvimTreeFolderName", { fg = Colors.grey })
--       G.color(0, "NvimTreeOpenedFolderName", { fg = Colors.grey })
--       G.color(0, "NvimTreeEmptyFolderName", { fg = Colors.grey })
--       G.color(0, "SpectreSearch", { fg = Colors.red })
--       G.color(0, "SpectreReplace", { fg = Colors.green })
--       G.color(0, "lualine_normal", { fg = Colors.background, bg = Colors.whitey })
--       G.color(0, "lualine_inactive", { fg = Colors.grey, bg = Colors.none })
--       G.g.terminal_color_0 = nil
--       G.g.terminal_color_1 = nil
--       G.g.terminal_color_2 = nil
--       G.g.terminal_color_3 = nil
--       G.g.terminal_color_4 = nil
--       G.g.terminal_color_5 = nil
--       G.g.terminal_color_6 = nil
--       G.g.terminal_color_7 = nil
--       G.g.terminal_color_8 = nil
--       G.g.terminal_color_9 = nil
--       G.g.terminal_color_10 = nil
--       G.g.terminal_color_11 = nil
--       G.g.terminal_color_12 = nil
--       G.g.terminal_color_13 = nil
--       G.g.terminal_color_14 = nil
--       G.g.terminal_color_15 = nil
--     end,
--   },
-- }

return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      local kanagawa = require("kanagawa")
      kanagawa.setup({
        theme = "dragon", -- Load "wave" theme when 'background' option is not set
        background = { -- map the value of 'background' option to a theme
          dark = "dragon", -- try "dragon" !
          light = "lotus",
        },
      })
      G.cmd("colorscheme kanagawa")

      G.color(0, "Normal", { bg = Colors.none })
      G.color(0, "NormalFloat", { bg = Colors.none })
      G.color(0, "FloatBorder", { fg = Colors.grey, bg = Colors.none })
      G.color(0, "MsgArea", { fg = Colors.grey54 })
      G.color(0, "ModeMsg", { fg = Colors.grey35 })
      -- G.color(0, "Error", { fg = Colors.red, bg = Colors.background })
      G.color(0, "StatusLine", {})
      G.color(0, "StatusLineNC", { bg = Colors.background })
      G.color(0, "WinBar", { bg = Colors.background })
      G.color(0, "WinBarNC", { bg = Colors.background })
      G.color(0, "SignColumn", {})
      G.color(0, "WinSeparator", { fg = Colors.black, bg = Colors.none })
      G.color(0, "VertSplit", { fg = Colors.black })
      G.color(0, "MatchParen", { fg = Colors.zero, bg = Colors.white })
      G.color(0, "CursorLine", { bg = Colors.black })
      G.color(0, "CursorLineNr", { fg = Colors.green, bg = Colors.black })
      G.color(0, "LineNr", { fg = Colors.ash, bg = Colors.none })
      --plugins
      G.color(0, "TreesitterContext", { bg = Colors.none })
      G.color(0, "TreesitterContextLineNumber", { fg = Colors.grey, bg = Colors.none })
      G.color(0, "LspInfoBorder", { fg = Colors.grey })
      G.color(0, "DiagnosticVirtualTextError", { fg = Colors.red })
      G.color(0, "DiagnosticVirtualTextWarn", { fg = Colors.green })
      G.color(0, "DiagnosticVirtualTextInfo", { fg = Colors.green })
      G.color(0, "DiagnosticVirtualTextHint", { fg = Colors.green })
      G.color(0, "DiagnosticSignError", { fg = Colors.red })
      G.color(0, "DiagnosticSignWarn", { fg = Colors.green })
      G.color(0, "DiagnosticSignInfo", { fg = Colors.green })
      G.color(0, "DiagnosticSignHint", { fg = Colors.green })
      G.color(0, "GitSignsAdd", { fg = Colors.green })
      G.color(0, "GitSignsChange", { fg = Colors.yellow })
      G.color(0, "GitSignsDelete", { fg = Colors.red })
      G.color(0, "NvimTreeNormal", { fg = "#808080" })
      G.color(0, "NvimTreeIndentMarker", { fg = Colors.black })
      G.color(0, "NvimTreeImageFile", { fg = Colors.white })
      G.color(0, "NvimTreeSpecialFile", { fg = Colors.white })
      G.color(0, "NvimTreeExecFile", { fg = "#808080" })
      G.color(0, "NvimTreeFolderName", { fg = Colors.grey54 })
      G.color(0, "NvimTreeFolderIcon", { fg = "#458588" })
      G.color(0, "NvimTreeOpenedFolderName", { fg = Colors.grey54 })
      G.color(0, "NvimTreeEmptyFolderName", { fg = Colors.grey35 })
      G.color(0, "SpectreSearch", { fg = Colors.red })
      G.color(0, "SpectreReplace", { fg = Colors.green })
      G.color(0, "lualine_normal", { fg = Colors.grey54, bg = Colors.none })
      G.color(0, "lualine_inactive", { fg = Colors.grey35, bg = Colors.none })
      G.g.terminal_color_0 = nil
      G.g.terminal_color_1 = nil
      G.g.terminal_color_2 = nil
      G.g.terminal_color_3 = nil
      G.g.terminal_color_4 = nil
      G.g.terminal_color_5 = nil
      G.g.terminal_color_6 = nil
      G.g.terminal_color_7 = nil
      G.g.terminal_color_8 = nil
      G.g.terminal_color_9 = nil
      G.g.terminal_color_10 = nil
      G.g.terminal_color_11 = nil
      G.g.terminal_color_12 = nil
      G.g.terminal_color_13 = nil
      G.g.terminal_color_14 = nil
      G.g.terminal_color_15 = nil
    end,
  },
}
