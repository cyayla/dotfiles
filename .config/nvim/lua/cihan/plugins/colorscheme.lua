return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      local gruvbox = require("Comment")
      gruvbox.setup({
        undercurl = true,
        underline = false,
        bold = false,
        italic = {
          strings = false,
          comments = false,
          operators = false,
          folds = false,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true,
        contrast = "hard",
        -- palette_overrides = { dark0 = "#1c1c1c" },
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })
      Cmd("colorscheme gruvbox")
      -- custom colors
      local background = "#1c1c1c"
      local zero = "#000000"
      local black = "#252525"
      local grey = "#777777"
      local white = "#aaaaaa"
      local red = "#cc7070"
      local green = "#70aa70"
      local yellow = "#aaaa70"
      -- general
      Color(0, "Normal", { bg = background })
      Color(0, "NormalFloat", { bg = background })
      Color(0, "FloatBorder", { fg = grey, bg = background })
      Color(0, "Error", { fg = red, bg = background })
      Color(0, "StatusLine", {})
      Color(0, "StatusLineNC", { bg = background })
      Color(0, "WinBar", { bg = background })
      Color(0, "WinBarNC", { bg = background })
      Color(0, "SignColumn", {})
      Color(0, "WinSeparator", { fg = black, bg = background })
      Color(0, "VertSplit", { fg = black })
      Color(0, "MatchParen", { fg = zero, bg = white })
      Color(0, "CursorLine", { bg = black })
      Color(0, "CursorLineNr", { fg = green, bg = black })
      --plugins
      Color(0, "LspInfoBorder", { fg = grey })
      Color(0, "DiagnosticVirtualTextError", { fg = red })
      Color(0, "DiagnosticVirtualTextWarn", { fg = green })
      Color(0, "DiagnosticVirtualTextInfo", { fg = green })
      Color(0, "DiagnosticVirtualTextHint", { fg = green })
      Color(0, "DiagnosticSignError", { fg = red })
      Color(0, "DiagnosticSignWarn", { fg = green })
      Color(0, "DiagnosticSignInfo", { fg = green })
      Color(0, "DiagnosticSignHint", { fg = green })
      Color(0, "GitSignsAdd", { fg = green })
      Color(0, "GitSignsChange", { fg = yellow })
      Color(0, "GitSignsDelete", { fg = red })
      Color(0, "NvimTreeNormal", { fg = white })
      Color(0, "NvimTreeIndentMarker", { fg = black })
      Color(0, "NvimTreeImageFile", { fg = white })
      Color(0, "NvimTreeSpecialFile", { fg = white })
      Color(0, "NvimTreeExecFile", { fg = white })
      Color(0, "NvimTreeFolderName", { fg = grey })
      Color(0, "NvimTreeOpenedFolderName", { fg = grey })
      Color(0, "NvimTreeEmptyFolderName", { fg = grey })
      Color(0, "SpectreSearch", { fg = red })
      Color(0, "SpectreReplace", { fg = green })
      G.terminal_color_0 = nil
      G.terminal_color_1 = nil
      G.terminal_color_2 = nil
      G.terminal_color_3 = nil
      G.terminal_color_4 = nil
      G.terminal_color_5 = nil
      G.terminal_color_6 = nil
      G.terminal_color_7 = nil
      G.terminal_color_8 = nil
      G.terminal_color_9 = nil
      G.terminal_color_10 = nil
      G.terminal_color_11 = nil
      G.terminal_color_12 = nil
      G.terminal_color_13 = nil
      G.terminal_color_14 = nil
      G.terminal_color_15 = nil
    end,
  },
}
