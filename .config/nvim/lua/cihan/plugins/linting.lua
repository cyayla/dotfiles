return {
  "mfussenegger/nvim-lint",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")
    lint.linters_by_ft = {
      -- javascript = { "eslint_d" },
      -- typescript = { "eslint_d" },
      -- javascriptreact = { "eslint_d" },
      -- typescriptreact = { "eslint_d" },
      -- svelte = { "eslint_d" },
      -- python = { "pylint" },
    }
    local lint_augroup = Api.nvim_create_augroup("lint", { clear = true })
    ApiAutocmd({
      "BufEnter",
      "BufWritePost",
      "InsertLeave",
    }, {
      -- pattern = { "*.js", "*.py" },
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })
    -- keymaps
    Keymap.set("n", "<leader>l", function()
      lint.try_lint()
    end)
  end,
}
