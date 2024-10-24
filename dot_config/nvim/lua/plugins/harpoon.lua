return {
	"ThePrimeagen/harpoon",
	keys = {
		{ "<leader>h", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Harpoon file navigation" },
		{ "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Harpoon add file" },
		{ "<a-1>", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "Harpoon switch to file 1" },
		{ "<a-2>", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "Harpoon switch to file 2" },
		{ "<a-3>", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "Harpoon switch to file 3" },
		{ "<a-4>", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = "Harpoon switch to file 4" },
	},
}
-- vim.keymap.set("n", "<leader>a", mark.add_file)
-- vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

-- vim.keymap.set("n", "<C-j>", function() ui.nav_file(1) end)
-- vim.keymap.set("n", "<C-k>", function() ui.nav_file(2) end)
-- vim.keymap.set("n", "<C-l>", function() ui.nav_file(3) end)
-- vim.keymap.set("n", "<C-m>", function() ui.nav_file(4) end)
