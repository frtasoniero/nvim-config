return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,

    dependencies = {
      "saghen/blink.cmp",
    },

    config = function()
      local capabilities = require("blink.cmp").get_lsp_capabilities()
      vim.lsp.config("gopls", {
        capabilities = capabilities,
        
        settings = {
          gopls = {
            gofumpt = true,
            staticcheck = true,
            usePlaceholders = true,

            analyses = {
              nilness = true,
              unusedparams = true,
              unusedwrite = true,
              useany = true,
            },

            hints = {
              assignVariableTypes = true,
              compositeLiteralFields = true,
              compositeLiteralTypes = true,
              constantValues = true,
              functionTypeParameters = true,
              parameterNames = true,
              rangeVariableTypes = true,
            },
          },
        },
      })

      vim.lsp.enable("gopls")

      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup(
          "user-lsp-attach",
          { clear = true }
        ),

        callback = function(event)
          local function map(keys, action, description)
            vim.keymap.set("n", keys, action, {
              buffer = event.buf,
              desc = "LSP: " .. description,
            })
          end

          map("gd", vim.lsp.buf.definition, "Go to definition")
          map("gD", vim.lsp.buf.declaration, "Go to declaration")
          map("grr", vim.lsp.buf.references, "Find references")
          map("gri", vim.lsp.buf.implementation, "Go to implementation")
          map("grt", vim.lsp.buf.type_definition, "Go to type definition")
          map("K", vim.lsp.buf.hover, "Hover documentation")

          map("<leader>lr", vim.lsp.buf.rename, "Rename symbol")
          map("<leader>la", vim.lsp.buf.code_action, "Code action")
          map("<leader>ld", vim.diagnostic.open_float, "Line diagnostics")

          map("[d", function()
            vim.diagnostic.jump({
              count = -1,
              float = true,
            })
          end, "Previous diagnostic")

          map("]d", function()
            vim.diagnostic.jump({
              count = 1,
              float = true,
            })
          end, "Next diagnostic")

          map("<leader>lf", function()
            vim.lsp.buf.format({
              async = false,
            })
          end, "Format buffer")

          local client = vim.lsp.get_client_by_id(event.data.client_id)

          if client
              and client:supports_method(
                vim.lsp.protocol.Methods.textDocument_inlayHint
              ) then
            vim.lsp.inlay_hint.enable(true, {
              bufnr = event.buf,
            })
          end
        end,
      })

      vim.diagnostic.config({
        virtual_text = true,
        underline = true,
        signs = true,
        update_in_insert = false,
        severity_sort = true,
        float = {
          border = "rounded",
          source = true,
        },
      })
    end,
  },
}
