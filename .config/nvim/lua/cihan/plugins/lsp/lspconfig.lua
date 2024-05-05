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
      G.opts.buffer = bufnr
      -- keymaps
      G.opts.desc = "Show LSP references"
      G.keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", G.opts) -- show definition, references
      G.opts.desc = "Go to declaration"
      G.keymap.set("n", "gD", vim.lsp.buf.declaration, G.opts) -- go to declaration
      G.opts.desc = "Show LSP definitions"
      G.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", G.opts) -- show lsp definitions
      G.opts.desc = "Show LSP implementations"
      G.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", G.opts) -- show lsp implementations
      G.opts.desc = "Show LSP type definitions"
      G.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", G.opts) -- show lsp type definitions
      G.opts.desc = "See available code actions"
      G.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, G.opts) -- see available code actions, in visual mode will apply to selection
      G.opts.desc = "Smart rename"
      G.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, G.opts) -- smart rename
      G.opts.desc = "Show buffer diagnostics"
      G.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", G.opts) -- show  diagnostics for file
      G.opts.desc = "Show line diagnostics"
      G.keymap.set("n", "<leader>d", G.diagnostic.open_float, G.opts) -- show diagnostics for line
      G.opts.desc = "Go to previous diagnostic"
      G.keymap.set("n", "[d", G.diagnostic.goto_prev, G.opts) -- jump to previous diagnostic in buffer
      G.opts.desc = "Go to next diagnostic"
      G.keymap.set("n", "]d", G.diagnostic.goto_next, G.opts) -- jump to next diagnostic in buffer
      G.opts.desc = "Show documentation for what is under cursor"
      G.keymap.set("n", "K", vim.lsp.buf.hover, G.opts) -- show documentation for what is under cursor
      G.opts.desc = "Restart LSP"
      G.keymap.set("n", "<leader>rs", ":LspRestart<CR>", G.opts) -- mapping to restart lsp if necessary
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
      --   G.autocmd("BufWritePost", {
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
              [G.fn.expand("$VIMRUNTIME/lua")] = true,
              [G.fn.stdpath("config") .. "/lua"] = true,
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

    G.diagnostic.config({
      signs = false,
      update_in_insert = true,
      underline = false,
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
