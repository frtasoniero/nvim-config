return {
  {
    "nvim-mini/mini.icons",
    version = false,

    config = function()
      local icons = require("mini.icons")

      icons.setup({
        style = "glyph",
      })

      -- Provides compatibility for plugins that expect
      -- nvim-web-devicons.
      icons.mock_nvim_web_devicons()
    end,
  },
}
