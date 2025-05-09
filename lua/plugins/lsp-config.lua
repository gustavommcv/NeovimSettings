return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "ts_ls" }
      }
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('ts_ls')
    end
  }
}

