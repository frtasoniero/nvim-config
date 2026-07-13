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

                  if vim.tbl_contains({
                    "Path",
                    "Folder",
                    "File",
                  }, ctx.source_name) then
                    local dev_icon, _ =
                      require("mini.icons").get(
                        ctx.source_name:lower(),
                        ctx.label
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
        default = {
          "lsp",
          "path",
          "snippets",
          "buffer",
        },
      },

      fuzzy = {
        implementation = "prefer_rust_with_warning",
      },
    },

    opts_extend = {
      "sources.default",
    },
  },
}
