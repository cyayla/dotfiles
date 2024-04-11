return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
      "windwp/nvim-ts-autotag",
    },
    config = function()
      local treesitter = require("nvim-treesitter.configs")
      treesitter.setup({
        highlight = {
          enable = true,
          use_languagetree = true,
        },
        indent = {
          enable = true,
          disable = { "python" },
        },
        autotag = {
          enable = true,
        },
        ensure_installed = {
          "lua",
          "json",
          "go",
          "gomod",
          "gowork",
          "javascript",
          "jsdoc",
          "typescript",
          "yaml",
          "html",
          "css",
          "prisma",
          "markdown",
          "markdown_inline",
          "svelte",
          "graphql",
          "bash",
          "vim",
          "dockerfile",
          "gitignore",
          "query",
          "python",
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
          },
        },
        ts_context_commentstring = {
          enable = true,
          enable_autocmd = false,
        },
      })
      -- keymaps
      Keymap.set("n", "<leader>pg", "<CMD>TSPlaygroundToggle<CR>")
      Keymap.set("n", "<leader>kk", "<CMD>TSHighlightCapturesUnderCursor<CR>")
    end,
  },
}
