return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
  },
  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local on_attach = function(client, bufnr)
      Opts.buffer = bufnr
      -- keymaps
      Opts.desc = "Show LSP references"
      Keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", Opts) -- show definition, references
      Opts.desc = "Go to declaration"
      Keymap.set("n", "gD", vim.lsp.buf.declaration, Opts) -- go to declaration
      Opts.desc = "Show LSP definitions"
      Keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", Opts) -- show lsp definitions
      Opts.desc = "Show LSP implementations"
      Keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", Opts) -- show lsp implementations
      Opts.desc = "Show LSP type definitions"
      Keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", Opts) -- show lsp type definitions
      Opts.desc = "See available code actions"
      Keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, Opts) -- see available code actions, in visual mode will apply to selection
      Opts.desc = "Smart rename"
      Keymap.set("n", "<leader>rn", vim.lsp.buf.rename, Opts) -- smart rename
      Opts.desc = "Show buffer diagnostics"
      Keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", Opts) -- show  diagnostics for file
      Opts.desc = "Show line diagnostics"
      Keymap.set("n", "<leader>d", Diagnostic.open_float, Opts) -- show diagnostics for line
      Opts.desc = "Go to previous diagnostic"
      Keymap.set("n", "[d", Diagnostic.goto_prev, Opts) -- jump to previous diagnostic in buffer
      Opts.desc = "Go to next diagnostic"
      Keymap.set("n", "]d", Diagnostic.goto_next, Opts) -- jump to next diagnostic in buffer
      Opts.desc = "Show documentation for what is under cursor"
      Keymap.set("n", "K", vim.lsp.buf.hover, Opts) -- show documentation for what is under cursor
      Opts.desc = "Restart LSP"
      Keymap.set("n", "<leader>rs", ":LspRestart<CR>", Opts) -- mapping to restart lsp if necessary
    end

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    lspconfig["html"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["tsserver"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      -- handlers = { ["textDocument/publishDiagnostics"] = function() end },
    })

    lspconfig["cssls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["tailwindcss"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["svelte"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      -- on_attach = function(client, bufnr)
      --   on_attach(client, bufnr)
      --   ApiAutocmd("BufWritePost", {
      --     pattern = { "*.js", "*.ts" },
      --     callback = function(ctx)
      --       if client.name == "svelte" then
      --         client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.file })
      --       end
      --     end,
      --   })
      -- end,
    })

    lspconfig["prismals"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["graphql"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      filetypes = { "graphql", "gql", "svelte", "typescriptreact", "javascriptreact" },
    })

    lspconfig["pyright"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["jsonls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["gopls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["sqlls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["rust_analyzer"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        Lua = {
          -- make the language server recognize "vim" global
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            -- make language server aware of runtime files
            library = {
              [Fn.expand("$VIMRUNTIME/lua")] = true,
              [Fn.stdpath("config") .. "/lua"] = true,
            },
          },
        },
      },
    })

    -- local signs = { Error = "▎|", Warn = "▎|", Hint = "▎|", Info = "▎|" }
    -- for type, icon in pairs(signs) do
    --   local hl = "DiagnosticSign" .. type
    --   Fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    -- end

    Diagnostic.config({
      signs = false,
      update_in_insert = true,
      underline = true,
      severity_sort = true,
      -- virtual_text = true,
      virtual_text = {
        source = "always",
        show = "first",
        spacing = 0,
        header = "",
        prefix = "",
        suffix = "",
      },
      float = { border = "single", source = "always", prefix = "● " },
    })
  end,
}
