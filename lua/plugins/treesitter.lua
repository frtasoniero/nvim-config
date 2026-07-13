return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",

    config = function()
      local treesitter = require("nvim-treesitter")

      treesitter.setup({})

      treesitter.install({
        "go",
        "gomod",
        "gosum",
        "gowork",
        "lua",
        "vim",
        "vimdoc",
        "markdown",
        "markdown_inline",
        "query",
      })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "go",
          "gomod",
          "gowork",
          "lua",
          "vim",
          "vimdoc",
          "markdown",
        },

        callback = function()
          pcall(vim.treesitter.start)
        end,
      })
    end,
  },
}
