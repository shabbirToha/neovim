return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "leoluz/nvim-dap-go",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      require("dapui").setup()
      require("dap-go").setup()

      local dap = require("dap")
      local dapui = require("dapui")

      vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
      vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Continue" })
      vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "Step Into" })
      vim.keymap.set("n", "<leader>do", dap.step_over, { desc = "Step Over" })
      vim.keymap.set("n", "<leader>dO", dap.step_out, { desc = "Step Out" })
      vim.keymap.set("n", "<leader>dr", dap.repl.open, { desc = "Open REPL" })
      vim.keymap.set("n", "<leader>dl", dap.run_last, { desc = "Run Last" })
      vim.keymap.set("n", "<leader>du", dapui.toggle, { desc = "Toggle DAP UI" })
    end,
  },
}
