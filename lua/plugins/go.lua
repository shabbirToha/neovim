return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = {
          source = "if_many",
          prefix = "■",
          filter = function(diagnostic)
            -- Suppress golangci-lint exit code 5 errors from any source
            if
              diagnostic.message:match("exited with code: 5")
              or diagnostic.message:match("golangci-lint.*exited with code: 5")
            then
              return false
            end
            return true
          end,
        },
        signs = true,
        underline = true,
      },
      servers = {
        gopls = {
          settings = {
            gopls = {
              gofumpt = true,
              staticcheck = true,
              analyses = {
                nilness = true,
                unusedparams = true,
                unusedwrite = true,
                useany = true,
              },
              codelenses = {
                gc_details = false,
                generate = true,
                regenerate_cgo = true,
                run_govulncheck = true,
                test = true,
                tidy = true,
                upgrade_dependency = true,
                vendor = true,
              },
              completeUnimported = true,
              directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
              hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true,
              },
              semanticTokens = true,
              usePlaceholders = true,
            },
          },
        },
      },
    },
  },
}
