return {
	"nvimtools/none-ls.nvim",

	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvimtools/none-ls-extras.nvim",
	},

	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Formatters
				null_ls.builtins.formatting.stylua, -- Lua
				null_ls.builtins.formatting.prettier, -- JS/TS 

				-- Completion
				null_ls.builtins.completion.spell,

				-- Diagnostics
        null_ls.builtins.diagnostics.eslint_d, -- JS/TS
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {
			desc = "[G]o [F]ormat (LSP)",
		})
	end,
}
