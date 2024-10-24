vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move selected block up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Append text in line below to the current line separated by space
vim.keymap.set("n", "J", "mzJ`z")

-- Allow pasting without losing the copied content in the buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Copy to the system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Delete moves content to the void buffer
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Disable Q command (something related to buffer repeat)
vim.keymap.set("n", "Q", "<nop>")

-- Change the word under the cursor in the whole file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
