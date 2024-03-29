vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>fs", vim.cmd.w)
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<leader>w", "<C-w>")
vim.keymap.set("n", "<leader>cc", function()
	vim.ui.input({ prompt = "Compile Command: " }, function(input)
		input = input:gsub(' ', "\\ ")
		vim.cmd.set(string.format("makeprg=%s", input))
	end)
end)
vim.keymap.set('n', '<leader>af', function()
	vim.cmd('ALEFix\nwrite!')
	print("ALE fixed document")
end
)
