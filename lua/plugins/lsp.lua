return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    requires = {
      "williamboman/mason-lspconfig.nvim"
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "rust_analyzer", "gopls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities,
        cargo = {
          allFeatures = true
        }
      })
      lspconfig.gopls.setup({
        capabilities = capabilities
      })

      vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format, { desc = 'Format' })
      vim.keymap.set('n', '<leader>ch', vim.lsp.buf.hover, { desc = 'Show hover information' })
      vim.keymap.set('n', '<leader>cn', vim.lsp.buf.rename, { desc = 'Rename symbol' })
      vim.keymap.set('n', '<leader>cd', vim.lsp.buf.definition, { desc = 'Go to definition' })
      vim.keymap.set('n', '<leader>cr', vim.lsp.buf.references, { desc = 'Show references' })
      vim.keymap.set('n', '<leader>ci', vim.lsp.buf.implementation, { desc = 'Go to implementations' })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Show code actions' })
    end
  }
}
