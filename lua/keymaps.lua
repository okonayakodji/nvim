local keymap = vim.keymap
keymap.set("n", "<C-f>", ":Telescope find_files<CR>", {})
keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
