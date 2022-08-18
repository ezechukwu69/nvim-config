local M = {}

local servers = {
        --dartls = {},
        tailwindcss = {},
        html = {},
        emmet_ls = {},
        sumneko_lua = {},
        sorbet = {},
        tsserver = {},
        vimls = {},
        cssls = {},
}


local on_attach = function(client, bufnr)
        -- See `:help omnifunc` and `:help ins-completion` for more information.
        vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

        -- Use LSP as the handler for formatexpr.
        -- See `:help formatexpr` for more information.
        vim.api.nvim_buf_set_option(0, "formatexpr", "v:lua.vim.lsp.formatexpr()")
        require("plugins.lsp.keymaps").setup(client, bufnr)
end


local opts = {
        on_attach = on_attach,
        flags = {
                debounce_text_changes = 150,
        },
}

function M.setup()
        require("plugins.lsp.installer").setup(servers, opts)
end

return M
