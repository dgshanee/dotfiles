vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd("silent! lua require('telescope.builtin').find_files()")
	end,
})

vim.api.nvim_create_autocmd("TabNew", {
  callback = function()
    vim.schedule(function()
      require('telescope.builtin').find_files()
    end)
  end,
})
