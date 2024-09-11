return {
    {
        'neovim/nvim-lspconfig',
        config = function()
            require('plugins.lsp.latex').setup()
            require('plugins.lsp.rust').setup()
            require('plugins.lsp.python').setup()
        end
    },
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip'
        },
        config = function()
            require('plugins.autocomplete.cmp').setup()  -- ensure the 'completion' module is in your 'lua' directory
        end
    }
}

