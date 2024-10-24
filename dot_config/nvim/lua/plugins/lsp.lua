return {
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      lazy = false,
      config = true,
    },
    lazy = false,
    opts = {
      ensure_installed = {
        "ansiblels",
        "bashls",
        "jsonls",
        "lua_ls",
        "pylsp",
        "terraformls",
        "tflint",
        "yamlls"
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    cmd = { "LspInfo", "LspInstall", "LspStart" },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.ansiblels.setup({
        capabilities = capabilities,
      })
      lspconfig.bashls.setup({
        capabilities = capabilities,
      })
      lspconfig.helm_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.jsonls.setup({
        capabilities = capabilities,
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.pylsp.setup({
        capabilities = capabilities,
        settings = {
          formatCommand = {"black"},
          pylsp = {
            plugins = {
              -- formatter options
              black = { enabled = true },
              autopep8 = { enabled = false },
              yapf = { enabled = false },
              -- linter options
              pylint = { enabled = true },
              pyflakes = { enabled = false },
              pycodestyle = { enabled = false },
              -- type checker
              pylsp_mypy = { enabled = true },
              -- auto-completion options
              jedi_completion = { fuzzy = true },
              -- import sorting
              pyls_isort = { enabled = true },
            }
          }
        },
      })
      lspconfig.terraformls.setup({
        capabilities = capabilities,
      })
      lspconfig.tflint.setup({
        capabilities = capabilities,
      })
      lspconfig.yamlls.setup({
        capabilities = capabilities,
      })
    end,
    keys = {
      {
        "K",
        vim.lsp.buf.hover,
        desc = "Displays hover information about the symbol under the cursor",
      },
      { "gd", vim.lsp.buf.definition, desc = "Go to symbol definition" },
      { "gn", vim.diagnostic.goto_next, desc = "Go to next LSP diagnostic message (error, warning or info)" },
      { "gp", vim.diagnostic.goto_prev, desc = "Go to previous LSP diagnostic message (error, warning or info)" },
      { "ga", vim.lsp.buf.code_action, desc = "Show quickfix list" },
      {
        "<leader>ca",
        vim.lsp.buf.code_action,
        mode = { "n", "v" },
        desc = "Code actions",
      },
    },
  },
}
