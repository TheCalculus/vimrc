require("no-clown-fiesta").setup({
    transparent = true,
    styles = {
        comments = {},
        functions = {},
        keywords = {},
        lsp = { underline = false },
        match_paren = {},
        type = { bold = true },
        variables = {},
    },
})

require("gruber-darker").setup({
    transparent = true,
    underline = false,
    bold = true,
})

vim.cmd [[colorscheme gruber-darker]]
