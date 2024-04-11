return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local lualine = require("lualine")
    lualine.setup({
      options = {
        section_separators = "",
        component_separators = "",
        icons_enabled = false,
        disabled_filetypes = {
          statusline = {
            "tsplayground",
            "NvimTree",
            "toggleterm",
            "spectre_panel",
          },
        },
      },
      sections = {
        lualine_a = {},
        lualine_b = { "branch", "location", "progress", "filesize" },
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
              packer = "Packer",
              fzf = "FZF",
              alpha = "Alpha",
            },
            buffers_color = {
              active = "lualine_a_normal",
              inactive = "lualine_a_inactive",
            },
            symbols = {
              modified = " +",
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
