return {
	"nvim-telescope/telescope.nvim",
	version = "0.1.5",
	lazy = false,
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-telescope/telescope-ui-select.nvim" },
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		require("telescope").setup({
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
			},
		})
		require("telescope").load_extension("ui-select")
		require("telescope").load_extension("fzf")
	end,
	keys = {
		{ "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "Find file" },
		{ "<leader>ps", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
		{ "<C-p>", "<cmd>Telescope git_files<cr>", desc = "Git files" },
    -- { "<C-d>", function() require('telescope.actions').delete_buffer() end, mode = { "i", "n", "v" }, desc = "Delete selected buffers" },
	},
}
