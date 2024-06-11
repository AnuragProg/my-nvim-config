vim.g.mapleader = " "

-- for netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- lsp remaps
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {desc='LSP: Code Action'})
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {desc='LSP: Code Action'})

-- for go to definitions



-- for diagnostic
-- vim.keymap.set('n', '<leader>dq', '<cmd>lua vim.diagnostic.setloclist()<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<leader>dn', '<cmd>lua vim.diagnostic.goto_next()<CR>', {noremap = true, silent = true })
-- vim.keymap.set('n', '<leader>dp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', {noremap = true, silent = true })





