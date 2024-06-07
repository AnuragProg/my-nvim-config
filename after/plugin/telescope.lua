local builtin = require('telescope.builtin')


-- searching and navigation
vim.keymap.set('n', '<leader>pf', builtin.find_files, {desc='Telescope: Search Project Files'})
vim.keymap.set('n', '<C-p>', builtin.git_files, {desc='Telescope: Search Git Files'} )
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, {desc='Telescope: Search Lines In Project'})

-- listing all the variables and functions available in the current buffer
vim.keymap.set('n', '<leader>pds', builtin.lsp_document_symbols, {desc='Telescope: Search Document Symbols'})
vim.keymap.set('n', '<leader>pws', builtin.lsp_workspace_symbols, {desc='Telescope: Search Workspace Symbols'})

-- vim.keymap.set('n', '<leader>q', builtin.diagnostics, {desc='Telescope: Diagnostics'})
