require("trouble").setup({
    icons = false,
})

vim.keymap.set("n", "<leader>rt", function()
    require("trouble").toggle("document_diagnostics")
end)

vim.keymap.set("n", "[t", function()
    require("trouble").next({skip_groups = true, jump = true});
end)

vim.keymap.set("n", "]t", function()
    require("trouble").previous({skip_groups = true, jump = true});
end)

