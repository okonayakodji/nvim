local keymap = vim.keymap
keymap.set("n", "<leader>ff", ":Telescope find_files find_command=rg,--hidden,--files,--ignore<CR>", {})
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", {})
keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>", {})
keymap.set("n", "<leader>ft", ":Telescope<CR>", {})
keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
