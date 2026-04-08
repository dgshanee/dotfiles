require("lspconfig").clangd.setup({
  root_dir = require("lspconfig").util.root_pattern(
    ".clangd",
    "compile_commands.json",
    ".git"
  ),
})
