vim.g.material_style = "deep ocean"
vim.cmd[[ colorscheme material ]]
vim.api.nvim_set_keymap('n', '<leader>mm', [[<Cmd>lua require('material.functions').toggle_style()<CR>]], { noremap = true, silent = true })

