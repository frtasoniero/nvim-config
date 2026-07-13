return {
  {
    "stevearc/conform.nvim",

    event = {
      "BufWritePre",
    },

    cmd = {
      "ConformInfo",
    },

    keys = {
      {
        "<leader>lf",
        function()
          require("conform").format({
            async = true,
            lsp_format = "fallback",
          })
        end,
        mode = {
          "n",
          "v",
        },
        desc = "Format buffer or selection",
      },
    },

    opts = {
      default_format_opts = {
        lsp_format = "fallback",
      },

      format_on_save = {
        timeout_ms = 1000,
        lsp_format = "fallback",
      },

      formatters_by_ft = {
        go = {},
      },

      notify_on_error = true,
      notify_no_formatters = false,
    },
  },
}
