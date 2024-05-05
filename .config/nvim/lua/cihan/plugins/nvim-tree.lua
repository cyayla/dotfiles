return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    local nvimtree = require("nvim-tree")
    G.g.loaded_netrw = 1
    G.g.loaded_netrwPlugin = 1
    nvimtree.setup({
      hijack_cursor = true,
      view = {
        width = 35,
      },
      renderer = {
        root_folder_label = false,
        indent_markers = {
          enable = true,
        },
        icons = {
          show = {
            file = false,
            folder_arrow = false,
          },
        },
      },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        enable = false,
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
    })
    -- keymaps
    G.keymap.set("n", "<leader>e", "<CMD>NvimTreeToggle<CR>")
  end,
}
