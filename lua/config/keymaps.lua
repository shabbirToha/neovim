-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Insert mode mappings
map("i", "jj", "<Esc>", { desc = "Enter normal mode", unpack(opts) })
map("i", "jk", "<Esc>", { desc = "Enter normal mode", unpack(opts) })
map("i", "<C-CR>", function()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>o", true, false, true), "n", true)
end, { desc = "Insert new line below and enter insert mode" })
