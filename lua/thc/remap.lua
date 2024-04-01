vim.g.mapleader = " "

vim.api.nvim_set_keymap("x", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.api.nvim_set_keymap("x", "K", ":m '<-2<CR>gv=gv", { silent = true })

vim.api.nvim_set_keymap("n", "<leader>y", [["+y]], { silent = true })
vim.api.nvim_set_keymap("x", "<leader>y", [["+y]], { silent = true })
vim.api.nvim_set_keymap("n", "<leader>Y", [["+Y]], { silent = true })
vim.api.nvim_set_keymap("x", "<leader>Y", [["+Y]], { silent = true })

vim.api.nvim_set_keymap("n", "<leader>pv", ":lua vim.cmd('Ex')<CR>", { silent = true })

vim.api.nvim_set_keymap("n", "<leader>b", ":buffers<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>o", ":buffer ", { silent = true })

-- floatterm
vim.api.nvim_set_keymap("n", "<leader>n", ":FloatermNew<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>t", ":FloatermToggle<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>h", ":FloatermPrev<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>l", ":FloatermNext<CR>", { silent = true })

-- terminal
vim.keymap.set('t', '<Esc>', "<C-\\><C-n>", { silent = true })
