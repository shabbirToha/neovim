return {
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("onedark").setup({
        style = "deep", -- options: dark, darker, cool, deep, warm, warmer, light
        transparent = true, -- set to true for no background
        term_colors = true, -- match terminal to theme
        ending_tildes = true, -- hide or show ~ at end of buffer
        toggle_style_key = nil, -- e.g. "<leader>ts" to toggle styles
        code_style = {
          comments = "italic",
          keywords = "italic",
          functions = "italic",
          strings = "none",
          variables = "none",
        },
        lualine = {
          transparent = true,
        },
        diagnostics = {
          darker = true,
          undercurl = true,
          background = true,
        },
        colors = {}, -- custom palette overrides
        highlights = {}, -- override specific highlight groups
      })
      require("onedark").load()
    end,
  },
}
