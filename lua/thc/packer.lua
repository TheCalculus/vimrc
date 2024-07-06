vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"
    use "voldikss/vim-floaterm"

    use "aktersnurra/no-clown-fiesta.nvim"
    use "Tsuzat/NeoSolarized.nvim"

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use({
        "nvim-telescope/telescope.nvim",
        requires = { {"nvim-lua/plenary.nvim"} }
    })

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })

    use("mbbill/undotree")
    use("tpope/vim-fugitive")

    use({
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end
    })

    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        requires = {
            {"neovim/nvim-lspconfig"},
            {"williamboman/mason.nvim"},
            {"williamboman/mason-lspconfig.nvim"},

            {"hrsh7th/nvim-cmp"},
            {"hrsh7th/cmp-buffer"},
            {"hrsh7th/cmp-path"},
            {"saadparwaiz1/cmp_luasnip"},
            {"hrsh7th/cmp-nvim-lsp"},
            {"hrsh7th/cmp-nvim-lua"},

            {"L3MON4D3/LuaSnip"},
            {"rafamadriz/friendly-snippets"},
        }
    })
end)
