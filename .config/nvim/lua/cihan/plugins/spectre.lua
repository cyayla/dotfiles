return {
  {
    "nvim-pack/nvim-spectre",
    config = function()
      local spectre = require("spectre")
      spectre.setup({
        color_devicons = false,
        highlight = {
          ui = "String",
          search = "SpectreSearch",
          replace = "SpectreReplace",
        },
      })
      -- keymaps
      G.keymap.set("n", "<leader>S", '<CMD>lua require("spectre").open()<CR>')
      G.keymap.set("n", "<leader>sw", '<CMD>lua require("spectre").open_visual({select_word=true})<CR>')
      G.keymap.set("v", "<leader>sw", '<ESC><CMD>lua require("spectre").open_visual()<CR>')
      G.keymap.set("n", "<leader>sc", '<CMD>lua require("spectre").open_file_search({select_word=true})<CR>')
    end,
  },
}
