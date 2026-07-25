return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,

    opts = {
      flavour = "mocha",

      integrations = {
        blink_cmp = true,
        gitsigns = true,
        treesitter = true,
        which_key = true,
        telescope = true,
        snacks = true,
        mini = true,
        dap = true,
        dap_ui = true,
        native_lsp = {
          enabled = true,
        },
      },
    },

    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
