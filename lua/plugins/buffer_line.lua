return {
  "akinsho/bufferline.nvim",
  enabled = true,
  opts = {
    options = {
      numbers = "ordinal",
      modified_icon = "",
      color_icons = true,
      separator_style = "thick", -- You can use: "slant", "thick", "thin", etc.
      show_buffer_close_icons = true,
      show_close_icon = false,
      diagnostics = "nvim_lsp",
      diagnostics_update_in_insert = false,
    },
  },
}
