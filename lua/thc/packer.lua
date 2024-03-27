vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"
--  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
    use { "wesleimp/sitrusbuddy.nvim", requires = "tjdevries/colorbuddy.vim" }
    use "voldikss/vim-floaterm"
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    use "neovim/nvim-lspconfig"
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "L3MON4D3/LuaSnip"
end)
