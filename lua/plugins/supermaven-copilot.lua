return {
	"supermaven-inc/supermaven-nvim",
	cmd = "SupermavenStart",
	event = "InsertEnter",
	config = function()
		require("supermaven-nvim").setup({
			keymaps = {
				accept_suggestion = "<Tab>",
			},
		})
	end,
}
