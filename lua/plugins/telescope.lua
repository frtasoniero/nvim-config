return {
  {
    "nvim-telescope/telescope.nvim",
    version = "*",

    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-mini/mini.icons",

      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",

        cond = function()
          return vim.fn.executable("make") == 1
        end,
      },
    },

    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      telescope.setup({
        defaults = {
          path_display = {
            "smart",
          },

          mappings = {
            i = {
              ["<C-j>"] = "move_selection_next",
              ["<C-k>"] = "move_selection_previous",
            },
          },
        },
      })

      pcall(telescope.load_extension, "fzf")

      vim.keymap.set("n", "<leader>ff", builtin.find_files, {
        desc = "Find files",
      })

      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
        desc = "Find text",
      })

      vim.keymap.set("n", "<leader>fb", builtin.buffers, {
        desc = "Find buffers",
      })

      vim.keymap.set("n", "<leader>fh", builtin.help_tags, {
        desc = "Find help",
      })

      vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {
        desc = "Find recent files",
      })

      vim.keymap.set("n", "<leader>fc", builtin.current_buffer_fuzzy_find, {
        desc = "Find in current buffer",
      })
    end,
  },
}
