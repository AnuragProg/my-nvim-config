vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.o.ignorecase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50


local file_separator = package.config:sub(1,1)
if file_separator == "\\" then
    vim.opt.shell = 'pwsh'
    vim.opt.shellcmdflag = '-nologo -noprofile -ExecutionPolicy RemoteSigned -command'
    vim.opt.shellxquote = ''
else
    vim.opt.shell = '/bin/sh'
    -- vim.opt.shellcmdflag = '--noprofile --norc'
    vim.opt.shellxquote = ''
end

-- start {{vimwiki config}}
vim.o.compatible = false
vim.cmd('filetype plugin on')
vim.cmd('syntax enable')
-- end {{vimwiki config}}

-- vim.opt.colorcolumn = "80"
