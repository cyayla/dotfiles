return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })
    mason_lspconfig.setup({
      ensure_installed = {
        "lua_ls",
        "jsonls",
        "html",
        "cssls",
        "tsserver",
        "tailwindcss",
        "svelte",
        "graphql",
        "emmet_ls",
        "prismals",
        "pyright",
        "gopls",
      },
      automatic_installation = true, -- not the same as ensure_installed
    })
    mason_tool_installer.setup({
      ensure_installed = {
        "stylua",
        "prettier",
        "eslint_d",
        "pylint",
        "yapf",
      },
    })
  end,
}
