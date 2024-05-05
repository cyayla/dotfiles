return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })
    telescope.load_extension("fzf")
    -- keymaps
    G.keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>")
    G.keymap.set("n", "<leader>fr", "<CMD>Telescope oldfiles<CR>")
    G.keymap.set("n", "<leader>fs", "<CMD>Telescope live_grep<CR>")
    G.keymap.set("n", "<leader>fc", "<CMD>Telescope grep_string<CR>")
    G.keymap.set("n", "<leader>fb", "<CMD>Telescope buffers<CR>")
    G.keymap.set("n", "<leader>fh", "<CMD>Telescope help_tags<CR>")
    G.keymap.set("n", "<leader>bb", "<CMD>Telescope buffers<CR>")
    G.keymap.set("n", "<leader>gc", "<CMD>Telescope git_commits<CR>")
    G.keymap.set("n", "<leader>gfc", "<CMD>Telescope git_bcommits<CR>")
    G.keymap.set("n", "<leader>gb", "<CMD>Telescope git_branches<CR>")
    G.keymap.set("n", "<leader>gs", "<CMD>Telescope git_status<CR>")
  end,
}
