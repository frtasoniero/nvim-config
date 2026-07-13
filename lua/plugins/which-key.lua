return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",

    opts = {
      preset = "modern",
      delay = 300,

      spec = {
        { "<leader>b", group = "Buffers" },
        { "<leader>f", group = "Find" },
        { "<leader>g", group = "Git / Go to" },
        { "<leader>gh", group = "Git hunks" },
        { "<leader>l", group = "LSP" },
        { "<leader>n", group = "Notifications" },
        { "<leader>t", group = "Terminal" },
      },
    },

    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({
            global = false,
          })
        end,
        desc = "Show buffer-local keymaps",
      },
    },
  },
}
