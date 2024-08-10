return {
	"neovim/nvim-lspconfig",
	opts = {
		servers = {
			gopls = {
				settings = {
					gopls = {
						gofumpt = true,
						hints = {
							assignVariableTypes = false,
						},
					},
				},
			},
		},
	},
}
