vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd("silent! lua require('telescope.builtin').find_files()")
	end,
})

vim.api.nvim_create_autocmd("TabNew", {
	callback = function()
		vim.schedule(function()
			require("telescope.builtin").find_files()
		end)
	end,
})

vim.api.nvim_create_user_command("FindFiles", function()
	require("telescope.builtin").find_files()
end, {})

vim.api.nvim_create_user_command("GlobalSearch", function()
	local input_string = vim.fn.input("Search For > ")
	if input_string == "" then
		return
	end

	require("telescope.builtin").grep_string({
		search = input_string,
	})
end, {})
