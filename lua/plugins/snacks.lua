return {
  {
    "folke/snacks.nvim",

    priority = 1000,
    lazy = false,

    opts = {
      bigfile = {
        enabled = true,
      },

      indent = {
        enabled = true,
      },

      input = {
        enabled = true,
      },

      notifier = {
        enabled = true,
        timeout = 3000,
      },

      quickfile = {
        enabled = true,
      },

      terminal = {
        enabled = true,
      },

      words = {
        enabled = true,
      },

      picker = {
        enabled = false,
      },

      explorer = {
        enabled = false,
      },

      dashboard = {
        enabled = false,
      },
    },

    keys = {
      {
        "<leader>nn",
        function()
          Snacks.notifier.show_history()
        end,
        desc = "Notification history",
      },
      {
        "<leader>nd",
        function()
          Snacks.notifier.hide()
        end,
        desc = "Dismiss notifications",
      },
      {
        "<leader>tt",
        function()
          Snacks.terminal()
        end,
        desc = "Toggle terminal",
      },
      {
        "<leader>tw",
        function()
          Snacks.terminal(nil, {
            win = {
              position = "right",
              width = 0.4,
            },
          })
        end,
        desc = "Terminal on right",
      },
      {
        "<leader>tz",
        function()
          Snacks.terminal(nil, {
            win = {
              position = "float",
              border = "rounded",
            },
          })
        end,
        desc = "Floating terminal",
      },
    },
  },
}
