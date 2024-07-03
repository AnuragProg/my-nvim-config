vim.g.mapleader = " "

-- for netrw
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- INFO: We are using currently oil and will be using that only for file tree

-- lsp remaps
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {desc='LSP: Code Action'})
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {desc='LSP: Code Action'})


-- visual shifts up and down in visual mode
vim.keymap.set("v", "<C-j>", ":m'>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m'<-2<CR>gv=gv")

-- for diagnostic
-- vim.keymap.set('n', '<leader>dq', '<cmd>lua vim.diagnostic.setloclist()<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<leader>dn', '<cmd>lua vim.diagnostic.goto_next()<CR>', {noremap = true, silent = true })
-- vim.keymap.set('n', '<leader>dp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', {noremap = true, silent = true })



-- for executing cpp files ( for competitive or short programs only, will only execute currently open file )
-- BUG: is not complete yet
vim.keymap.set('n', '<leader>e', function()
    local filename = vim.api.nvim_buf_get_name(0)
    vim.cmd(":!g++ -o main "..filename)
    vim.cmd(":!./main")
end)


