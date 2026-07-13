return {
  {
    "lewis6991/gitsigns.nvim",

    event = {
      "BufReadPre",
      "BufNewFile",
    },

    opts = {
      signs = {
        add = {
          text = "│",
        },
        change = {
          text = "│",
        },
        delete = {
          text = "_",
        },
        topdelete = {
          text = "‾",
        },
        changedelete = {
          text = "~",
        },
        untracked = {
          text = "┆",
        },
      },

      signs_staged = {
        add = {
          text = "│",
        },
        change = {
          text = "│",
        },
        delete = {
          text = "_",
        },
        topdelete = {
          text = "‾",
        },
        changedelete = {
          text = "~",
        },
        untracked = {
          text = "┆",
        },
      },

      current_line_blame = false,
      attach_to_untracked = true,

      on_attach = function(bufnr)
        local gitsigns = require("gitsigns")

        local function map(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, {
            buffer = bufnr,
            desc = "Git: " .. desc,
          })
        end

        map("n", "]h", function()
          if vim.wo.diff then
            vim.cmd.normal({
              "]c",
              bang = true,
            })
          else
            gitsigns.nav_hunk("next")
          end
        end, "Next hunk")

        map("n", "[h", function()
          if vim.wo.diff then
            vim.cmd.normal({
              "[c",
              bang = true,
            })
          else
            gitsigns.nav_hunk("prev")
          end
        end, "Previous hunk")

        map(
          "n",
          "<leader>ghs",
          gitsigns.stage_hunk,
          "Stage hunk"
        )

        map(
          "n",
          "<leader>ghr",
          gitsigns.reset_hunk,
          "Reset hunk"
        )

        map("v", "<leader>ghs", function()
          gitsigns.stage_hunk({
            vim.fn.line("."),
            vim.fn.line("v"),
          })
        end, "Stage selected hunk")

        map("v", "<leader>ghr", function()
          gitsigns.reset_hunk({
            vim.fn.line("."),
            vim.fn.line("v"),
          })
        end, "Reset selected hunk")

        map(
          "n",
          "<leader>ghp",
          gitsigns.preview_hunk,
          "Preview hunk"
        )

        map(
          "n",
          "<leader>ghi",
          gitsigns.preview_hunk_inline,
          "Preview hunk inline"
        )

        map("n", "<leader>ghb", function()
          gitsigns.blame_line({
            full = true,
          })
        end, "Blame line")

        map(
          "n",
          "<leader>ghd",
          gitsigns.diffthis,
          "Diff against index"
        )

        map("n", "<leader>ghD", function()
          gitsigns.diffthis("~")
        end, "Diff against last commit")

        map(
          "n",
          "<leader>ghS",
          gitsigns.stage_buffer,
          "Stage buffer"
        )

        map(
          "n",
          "<leader>ghR",
          gitsigns.reset_buffer,
          "Reset buffer"
        )

        map(
          "n",
          "<leader>ght",
          gitsigns.toggle_current_line_blame,
          "Toggle line blame"
        )

        map(
          { "o", "x" },
          "ih",
          gitsigns.select_hunk,
          "Select hunk"
        )
      end,
    },
  },
}
