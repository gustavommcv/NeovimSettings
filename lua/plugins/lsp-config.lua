return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls", "bashls" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.keymap.set("n", "<leader>ca", function()
        vim.lsp.buf.code_action({
          context = {
            diagnostics = {},
            only = { "source.organizeImports.ts", "source.addMissingImports.ts" },
          },
        })
      end, { desc = "Code actions (auto-import)" })

      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.bashls.setup({
        capabilities = capabilities,
      })
    end,
  },
}
