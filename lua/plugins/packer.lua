return require('packer').startup(function(use)
        use { 'jiangmiao/auto-pairs' }
        use { 'hrsh7th/vim-vsnip' }
        use { 'hrsh7th/vim-vsnip-integ' }
        use { 'rcarriga/nvim-notify' }
        use { 'mattn/emmet-vim' }
        use { 'marko-cerovac/material.nvim' }
        use { 'hrsh7th/nvim-compe' }
        use {
                "folke/which-key.nvim",
                config = function()
                        require("which-key").setup {
                                -- your configuration comes here
                                -- or leave it empty to use the default settings
                                -- refer to the configuration section below
                        }
                end
        }
        -- use {
        --         "nanozuki/tabby.nvim",
        --         config = function() require("tabby").setup({
        --                 tabline = require("tabby.presets").active_wins_at_tail
        --         }) end,
        -- }
        use {
                'romgrk/barbar.nvim',
                requires = { 'kyazdani42/nvim-web-devicons' }
        }
        -- use {'neoclide/coc.nvim', branch = 'release' }
        use { 'dart-lang/dart-vim-plugin' }
        use { 'preservim/nerdcommenter' }
        use {
                "glepnir/lspsaga.nvim",
                branch = "main",
        }
        use { 'feline-nvim/feline.nvim', config = function() require('feline').setup() end }
        use {
                'nvim-telescope/telescope.nvim', tag = '0.1.0',
                -- or                            , branch = '0.1.x',
                requires = { { 'nvim-lua/plenary.nvim' } }
        }
        -- use {
        -- "windwp/nvim-autopairs",
        -- config = function() require("nvim-autopairs").setup {} end
        -- }
        use 'wbthomason/packer.nvim'
        use 'gruvbox-community/gruvbox'
        use { "williamboman/mason.nvim" }
        use {
                "williamboman/nvim-lsp-installer",
                "neovim/nvim-lspconfig",
        }
        use {
                'kyazdani42/nvim-tree.lua',
                requires = {
                        'kyazdani42/nvim-web-devicons', -- optional, for file icons
                },
                tag = 'nightly' -- optional, updated every week. (see issue #1193)
        }
        use { 'hrsh7th/cmp-nvim-lsp' }
        use { 'hrsh7th/cmp-buffer' }
        use { 'hrsh7th/cmp-path' }
        use { 'hrsh7th/cmp-cmdline' }
        use { 'hrsh7th/nvim-cmp' }
        use { 'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim' }
end)
