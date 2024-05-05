return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local lualine = require("lualine")
    local custom_gruvbox = require("lualine.themes.gruvbox")
    custom_gruvbox.normal = {
      a = { bg = Colors.none, fg = Colors.grey54, gui = "bold" },
      b = { bg = Colors.none, fg = Colors.grey54 },
      c = { bg = Colors.none, fg = Colors.grey54 },
    }
    custom_gruvbox.insert = {
      a = { bg = Colors.none, fg = Colors.grey54, gui = "bold" },
      b = { bg = Colors.none, fg = Colors.grey54 },
      c = { bg = Colors.none, fg = Colors.grey54 },
    }
    custom_gruvbox.visual = {
      a = { bg = Colors.none, fg = Colors.grey54, gui = "bold" },
      b = { bg = Colors.none, fg = Colors.grey54 },
      c = { bg = Colors.none, fg = Colors.grey54 },
    }
    custom_gruvbox.replace = {
      a = { bg = Colors.none, fg = Colors.grey54, gui = "bold" },
      b = { bg = Colors.none, fg = Colors.grey54 },
      c = { bg = Colors.none, fg = Colors.grey54 },
    }
    custom_gruvbox.command = {
      a = { bg = Colors.none, fg = Colors.grey54, gui = "bold" },
      b = { bg = Colors.none, fg = Colors.grey54 },
      c = { bg = Colors.none, fg = Colors.grey54 },
    }
    -- gruvbox.inactive = {
    --   a = { bg = Colors.none, fg = Colors.red, gui = "underline" },
    --   b = { bg = Colors.none, fg = Colors.grey },
    --   c = { bg = Colors.none, fg = Colors.grey },
    -- }
    lualine.setup({
      options = {
        theme = custom_gruvbox,
        section_separators = { left = "", right = "" },
        component_separators = "",
        icons_enabled = false,
        disabled_filetypes = {
          statusline = {
            "tsplayground",
            "NvimTree",
            "toggleterm",
            "spectre_panel",
            "lazy",
          },
        },
      },
      sections = {
        lualine_a = {},
        lualine_b = { "location", "progress", "filesize" },
        lualine_c = {
          {
            "buffers",
            show_filename_only = true,
            hide_filename_extension = false,
            show_modified_status = true,
            mode = 0,
            use_mode_colors = false,
            filetype_names = {
              TelescopePrompt = "Telescope",
              dashboard = "Dashboard",
              fzf = "FZF",
              alpha = "Alpha",
            },
            buffers_color = {
              active = "lualine_normal",
              inactive = "lualine_inactive",
            },
            symbols = {
              modified = " [+]",
              alternate_file = "",
              directory = "[dir]",
            },
          },
        },
        lualine_x = { "diff", "diagnostics" },
        lualine_y = { "encoding", "fileformat", "filetype" },
        lualine_z = { "mode" },
      },
    })
  end,
}
