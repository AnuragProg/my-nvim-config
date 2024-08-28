local builtin = require('telescope.builtin')

-- searching and navigation
vim.keymap.set('n', '<leader>pf', builtin.find_files, {desc='Telescope: Search Project Files'})
vim.keymap.set('n', '<C-p>', builtin.git_files, {desc='Telescope: Search Git Files'} )
vim.keymap.set('n', '<leader>ps', function()
    local input = vim.fn.input("Grep > ")
    if input == "" then
        return
    end
    builtin.grep_string({ search = input });
end, {desc='Telescope: Search Lines In Project'})
vim.keymap.set('n', '<leader>pl', builtin.live_grep, {desc='Telescope: Live Search Lines in Project'})

-- listing all the variables and functions available in the current buffer
vim.keymap.set('n', 'gr', builtin.lsp_references, {desc='Telescope: Quickfix references'})
vim.keymap.set('n', '<leader>pds', builtin.lsp_document_symbols, {desc='Telescope: Search Document Symbols'})
vim.keymap.set('n', '<leader>pws', builtin.lsp_workspace_symbols, {desc='Telescope: Search Workspace Symbols'})
vim.keymap.set('n', '<leader>ht', builtin.help_tags, {desc='Telescope: Help Tag'})

-- vim.keymap.set('n', '<leader>q', builtin.diagnostics, {desc='Telescope: Diagnostics'})
