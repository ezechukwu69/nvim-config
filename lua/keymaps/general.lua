local map = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

-- emmet
vim.cmd[[ 
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key=',' 
]]


-- Escape
map('i', 'jk', '<ESC>')
map('i', 'ii', '<ESC>')

-- Window

map("n", "<C-.>", "<cmd>lua vim.lsp.buf.code_action()<CR>")
map('n', '<C-l>', '<C-w>l')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-h>', '<C-w>h')
map('n', '<C-h>', '<C-w>h')
map('n', '<leader><right>', '<C-w>l')
map('n', '<leader><up>', '<C-w>k')
map('n', '<leader><down>', '<C-w>j')
map('n', '<leader><left>', '<C-w>h')

-- Tabs
map('n', '<leader>tn', ':bn<CR>')
map('n', '<leader>tp', ':bp<CR>')
map('n', '<leader>td', ':bd<CR>')
map('n', '<leader>tc', ':bd<CR>')

--NvimTree
map('n', '<C-[>', ':NvimTreeToggle<CR>')

-- Telescope
map('n', '<C-p>', ':Telescope find_files<cr>')
