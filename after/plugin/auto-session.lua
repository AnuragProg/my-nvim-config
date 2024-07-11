require('auto-session').setup({
    log_level = 'error',
    auto_session_enable_last_session = false,
    auto_session_root_dir = vim.fn.stdpath('data').."/sessions/",
    auto_session_enabled = false,
    auto_save_enabled = nil,
    auto_restore_enabled = nil,
    auto_session_suppress_dirs = nil,
    auto_session_use_git_branch = nil,
})

vim.keymap.set('n', '<leader>ss', function ()
    vim.cmd('SessionSave')
    print(vim.loop.cwd()..': Session Created')
end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sr', function ()
    vim.cmd('SessionRestore')
    print(vim.loop.cwd()..': Session Restored')
end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sd', function ()
    vim.cmd('SessionDelete')
    print(vim.loop.cwd()..': Session Deleted')
end, { noremap = true, silent = true })
