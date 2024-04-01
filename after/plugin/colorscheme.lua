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

vim.cmd [[colorscheme no-clown-fiesta]]
