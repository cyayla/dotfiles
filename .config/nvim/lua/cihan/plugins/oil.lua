return {
  "stevearc/oil.nvim",
  config = function()
    local oil = require("oil")
    oil.setup()
    -- keymaps
    G.keymap.set("n", "<leader>Oil", "<CMD>Oil<CR>")
  end,
}
