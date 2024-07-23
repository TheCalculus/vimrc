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

require("NeoSolarized").setup({
    transparent = true,
    enable_italics = false,
    styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = { bold = true },
        variables = {},
        string = { italic = false },
        underline = true, -- true/false; for global underline
        undercurl = true, -- true/false; for global undercurl
    },
})

vim.cmd [[colorscheme NeoSolarized]]
