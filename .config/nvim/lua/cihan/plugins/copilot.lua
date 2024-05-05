return {
  "github/copilot.vim",
  event = "VeryLazy",
  config = function()
    G.keymap.set("i", "<C-L>", 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
    })
    G.g.copilot_no_tab_map = true
  end,
}
