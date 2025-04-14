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
		{ "<leader>bh", "<cmd>bnext<CR>", desc = "Move to the next buffer" },
		{ "<leader>bl", "<cmd>bprevious<CR>", desc = "Move to the previous buffer" },
	},
}
