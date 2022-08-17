require('telescope').setup {}
require("telescope").load_extension("flutter")

vim.cmd [[
        nnoremap <C-S-f> <cmd>Telescope flutter commands<cr>
        nnoremap <C-S-p> <cmd>Telescope<cr>
        nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
]]
