return {
	"nvimtools/none-ls.nvim",
	optional = true,
	dependencies = {
		{
			"williamboman/mason.nvim",
			opts = { ensure_installed = { "revive" } },
		},
	},
	opts = function(_, opts)
		local null_ls = require("null-ls")

		opts.sources = vim.list_extend(opts.sources or {}, {
			null_ls.builtins.diagnostics.revive,
			null_ls.builtins.formatting.goimports,
			null_ls.builtins.formatting.gofumpt,
		})
	end,
}
