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
    local group = G.api.nvim_create_augroup("TermMatchParen", { clear = true })
    G.autocmd("TermOpen", { command = "NoMatchParen", group = group })
    G.autocmd("TermEnter", { command = "DoMatchParen", group = group })
    -- keymaps
    G.keymap.set("n", "<leader>te", "<CMD>ToggleTerm<CR>")
    G.keymap.set("n", "<leader>gt", "<CMD>lua _G.lazygit_toggle()<CR>", G.opts)
    function _G.set_terminal_keymaps()
      local opts = { buffer = 0 }
      G.keymap.set("t", "<C-h>", [[<CMD>wincmd h<CR>]], opts)
      G.keymap.set("t", "<C-j>", [[<CMD>wincmd j<CR>]], opts)
      G.keymap.set("t", "<C-k>", [[<CMD>wincmd k<CR>]], opts)
      G.keymap.set("t", "<C-l>", [[<CMD>wincmd l<CR>]], opts)
    end
    G.autocmd("BufEnter", {
      command = "autocmd! TermOpen term://* lua set_terminal_keymaps()",
    })
  end,
}
