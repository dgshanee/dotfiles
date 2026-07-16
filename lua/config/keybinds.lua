vim.g.ttimeoutlen = 20
vim.g.timeoutlen = 20

vim.keymap.set("n", "<leader>q", ":qall!<CR>")

vim.keymap.set("n", "<leader>]", ":tabprevious<CR>")
vim.keymap.set("n", "<leader>[", ":tabnext<CR>")
vim.keymap.set("n", "<leader>=", ":tabnew<CR>")

vim.keymap.set("n", "<leader>f", ":FindFiles<CR>")
vim.keymap.set("n", "<leader>F", ":FindFilesRootDir<CR>")

vim.keymap.set("n", "<leader>s", ":Telescope lsp_document_symbols<CR>")

-- Source - https://stackoverflow.com/a/74584098
-- Posted by Brotify Force, modified by community. See post 'Timeline' for change history
-- Retrieved 2026-04-08, License - CC BY-SA 4.0
-- vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
