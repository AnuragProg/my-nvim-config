vim.g.mapleader = " "

-- for netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- for code actions
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)

-- for diagnostic
vim.keymap.set('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', { noremap = true, silent = true })
