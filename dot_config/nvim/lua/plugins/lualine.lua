return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		{ "nvim-tree/nvim-web-devicons" },
	},
	event = "VeryLazy",
	opts = {
		options = {
			theme = "catppuccin",
		},
    sections = {
      lualine_a = {
        'buffers',
      }
    }
	},
	keys = {
		{ "<leader>bl", "<cmd>bnext<CR>", desc = "Move to the next buffer" },
		{ "<leader>bh", "<cmd>bprevious<CR>", desc = "Move to the previous buffer" },
	},
}
