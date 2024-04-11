return {
  "akinsho/toggleterm.nvim",
  config = function()
    local toggleterm = require("toggleterm")
    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new({ cmd = "lazygit", direction = "float", hidden = true })
    toggleterm.setup({
      direction = "float",
      start_in_insert = true,
    })
    function _G.lazygit_toggle()
      lazygit:toggle()
    end
    local group = Api.nvim_create_augroup("TermMatchParen", { clear = true })
    ApiAutocmd("TermOpen", { command = "NoMatchParen", group = group })
    ApiAutocmd("TermEnter", { command = "DoMatchParen", group = group })
    -- keymaps
    Keymap.set("n", "<leader>te", "<CMD>ToggleTerm<CR>")
    Keymap.set("n", "<leader>gt", "<CMD>lua _G.lazygit_toggle()<CR>", Opts)
    function _G.set_terminal_keymaps()
      local opts = { buffer = 0 }
      Keymap.set("t", "<C-h>", [[<CMD>wincmd h<CR>]], opts)
      Keymap.set("t", "<C-j>", [[<CMD>wincmd j<CR>]], opts)
      Keymap.set("t", "<C-k>", [[<CMD>wincmd k<CR>]], opts)
      Keymap.set("t", "<C-l>", [[<CMD>wincmd l<CR>]], opts)
    end
    ApiAutocmd("BufEnter", {
      command = "autocmd! TermOpen term://* lua set_terminal_keymaps()",
    })
  end,
}
