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

vim.api.nvim_create_user_command("FindFilesRootDir", function()
	local builtin = require("telescope.builtin")

	local function git_root()
		local root = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
		if vim.v.shell_error ~= 0 then
			return vim.loop.cwd()
		end
		return root
	end

	builtin.find_files({
		cwd = git_root(),
	})
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
