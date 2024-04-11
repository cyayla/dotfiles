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
    Keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>")
    Keymap.set("n", "<leader>fr", "<CMD>Telescope oldfiles<CR>")
    Keymap.set("n", "<leader>fs", "<CMD>Telescope live_grep<CR>")
    Keymap.set("n", "<leader>fc", "<CMD>Telescope grep_string<CR>")
    Keymap.set("n", "<leader>fb", "<CMD>Telescope buffers<CR>")
    Keymap.set("n", "<leader>fh", "<CMD>Telescope help_tags<CR>")
    Keymap.set("n", "<leader>bb", "<CMD>Telescope buffers<CR>")
    Keymap.set("n", "<leader>gc", "<CMD>Telescope git_commits<CR>")
    Keymap.set("n", "<leader>gfc", "<CMD>Telescope git_bcommits<CR>")
    Keymap.set("n", "<leader>gb", "<CMD>Telescope git_branches<CR>")
    Keymap.set("n", "<leader>gs", "<CMD>Telescope git_status<CR>")
  end,
}
