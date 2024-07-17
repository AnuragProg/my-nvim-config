

-- removing to prevent unnecessary search for this keymap
-- previously was being used for rename using lsp
vim.api.nvim_del_keymap('n', '<leader>r')


vim.keymap.set("x", "<leader>re", ":Refactor extract\n")
vim.keymap.set("x", "<leader>rf", ":Refactor extract_to_file\n")

vim.keymap.set("x", "<leader>rv", ":Refactor extract_var\n")

vim.keymap.set({ "n", "x" }, "<leader>ri", ":Refactor inline_var\n")

vim.keymap.set( "n", "<leader>rI", ":Refactor inline_func\n")

vim.keymap.set("n", "<leader>rb", ":Refactor extract_block\n")
vim.keymap.set("n", "<leader>rbf", ":Refactor extract_block_to_file\n")
