return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = function()
    local neogen = require("neogen")

    neogen.setup({
      enabled = true,
    })

    Keymap.set("n", "<Leader>nf", ":lua require('neogen').generate({ type = 'func' })<CR>", Opts)
  end,
}
