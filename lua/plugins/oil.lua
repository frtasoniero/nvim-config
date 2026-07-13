return {
  {
    "stevearc/oil.nvim",
    lazy = false,

    dependencies = {
      "nvim-mini/mini.icons",
    },

    opts = {
      default_file_explorer = true,

      columns = {
        "icon",
      },

      view_options = {
        show_hidden = false,
      },

      delete_to_trash = false,
      skip_confirm_for_simple_edits = false,
    },

    keys = {
      {
        "-",
        "<cmd>Oil<CR>",
        desc = "Open parent directory",
      },
      {
        "<leader>fo",
        "<cmd>Oil --float<CR>",
        desc = "Open Oil floating window",
      },
    },
  },
}
