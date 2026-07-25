return {
  {
    "saghen/blink.cmp",
    version = "1.*",

    dependencies = {
      "nvim-mini/mini.icons",
    },

    opts = {
      keymap = {
        preset = "default",
      },

      appearance = {
        nerd_font_variant = "mono",
      },

      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 500,
        },

        menu = {
          border = "rounded",

          draw = {
            components = {
              kind_icon = {
                text = function(ctx)
                  local icon = ctx.kind_icon

                  if ctx.source_name == "Path" then
                    local is_unknown_type = vim.tbl_contains({
                      "link",
                      "socket",
                      "fifo",
                      "char",
                      "block",
                      "unknown",
                    }, ctx.item.data.type)

                    local dev_icon, _ = require("mini.icons").get(
                      is_unknown_type and "os" or ctx.item.data.type,
                      is_unknown_type and "" or ctx.label
                    )

                    if dev_icon then
                      icon = dev_icon
                    end
                  else
                    icon = require("mini.icons").get(
                      "lsp",
                      ctx.kind
                    )
                  end

                  return icon .. ctx.icon_gap
                end,
              },
            },
          },
        },
      },

      signature = {
        enabled = true,
        window = {
          border = "rounded",
        },
      },

      sources = {
        -- "path" triggers on every "/", so only offer it inside string-like
        -- nodes (e.g. #include "...", string literals) to keep it from
        -- popping up while just writing "//" comments or code.
        default = function()
          local ok, node = pcall(vim.treesitter.get_node)
          local node_type = ok and node and node:type()

          if vim.tbl_contains({
            "comment",
            "line_comment",
            "block_comment",
          }, node_type) then
            return { "buffer" }
          end

          if vim.tbl_contains({
            "string",
            "string_literal",
            "raw_string_literal",
            "interpreted_string_literal",
            "system_lib_string",
          }, node_type) then
            return { "lsp", "path", "buffer" }
          end

          return { "lsp", "snippets", "buffer" }
        end,
      },

      fuzzy = {
        implementation = "prefer_rust_with_warning",
      },
    },
  },
}
