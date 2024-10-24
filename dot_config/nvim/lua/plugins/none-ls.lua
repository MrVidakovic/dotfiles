return {
	"nvimtools/none-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.diagnostics.ansiblelint,
				null_ls.builtins.diagnostics.terraform_validate,
				null_ls.builtins.formatting.shfmt,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.terraform_fmt,
			},
		})
	end,
	keys = {
		{ "<leader>gf", vim.lsp.buf.format, desc = "Format text using none-ls" },
	},
}
