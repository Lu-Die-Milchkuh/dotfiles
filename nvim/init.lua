vim.opt.belloff     = "all"
vim.opt.number      = true
vim.opt.syntax      = "enable"	
vim.opt.autoindent  = true
vim.opt.tabstop     = 4
vim.opt.shiftwidth  = 4
vim.opt.clipboard   = "unnamed"
vim.opt.background  = "dark"
vim.opt.termguicolors = true
vim.opt.cursorline = true

vim.cmd("colorscheme gruvbox")

vim.g.neoformat_enabled = { 'clangformat' }

-- Autoformat on save
vim.api.nvim_exec([[
    augroup AutoFormat
        autocmd!
        autocmd BufWritePre * Neoformat
    augroup end
]], true)

-- Autocompletion
-- vim.api.nvim_set_keymap('i', '{', '{}<Left>', { noremap = true })
-- vim.api.nvim_set_keymap('i', '<CR>', [[getline('.')[col('.')-2] == '{' ? '<CR><Esc>O<BS><Tab>' : '<CR>']], { noremap = true, expr = true })
-- vim.api.nvim_set_keymap('i', '(', '()<Left>', { noremap = true })
-- vim.api.nvim_set_keymap('i', '"', '""<Left>', { noremap = true })
-- vim.api.nvim_set_keymap('i', '`', '``<Left>', { noremap = true })

require("plugins")
