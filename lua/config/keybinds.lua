vim.g.ttimeoutlen = 20
vim.g.timeoutlen = 20

vim.keymap.set("n", "<leader>q", ":qall!<CR>")

vim.keymap.set("n", "<leader>]", ":tabprevious<CR>")
vim.keymap.set("n", "<leader>[", ":tabnext<CR>")
vim.keymap.set("n", "<leader>=", ":tabnew<CR>")

vim.keymap.set("n", "<leader>f", ":FindFiles<CR>")
vim.keymap.set("n", "<leader>/", ":GlobalSearch<CR>")
