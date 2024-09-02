vim.g.mapleader = " "

-- for netrw
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- INFO: We are using currently oil and will be using that only for file tree

-- lsp remaps
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {desc='LSP: Code Action'})
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {desc='LSP: Code Action'})


-- visual shifts up and down in visual mode
vim.keymap.set("v", "<C-j>", ":m'>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m'<-2<CR>gv=gv")

-- quickfix list keymaps
vim.keymap.set("n", "<C-]>", function()
    if #vim.fn.getqflist() > 0 then
        vim.cmd('cnext')
    end
end, {desc="QuickFix: Next Item"})
vim.keymap.set("n", "<C-[>", function ()
    if #vim.fn.getqflist() > 0 then
        vim.cmd('cprev')
    end
end, {desc="QuickFix: Previous Item"})
vim.keymap.set("n", "<C-q>", ":cclose<CR>", {desc="QuickFix: Close"})

