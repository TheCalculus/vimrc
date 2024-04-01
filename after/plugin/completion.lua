local lsp = require('lsp-zero')

lsp.preset("recommended")
lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
end)

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

-- https://www.reddit.com/r/neovim/comments/12foks4/need_some_help_to_find_why_enter_does_not_pick/

cmp.setup({
    mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<cr>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    }
})

vim.diagnostic.config({
    virtual_text = {
        prefix = '',
        source = 'if_many',
    },
    update_in_insert = true,
    float = {
        source = 'if_many',
    },
})

vim.opt.signcolumn = 'no'

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        lsp.default_setup,
    },
})
