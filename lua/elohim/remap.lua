vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>fs", vim.cmd.w)
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<leader>w", "<C-w>")
vim.keymap.set("n", "<leader>cc", function() 
	vim.ui.input( { prompt = "Compile Command: " }, function(input)
		input = input:gsub(' ', "\\ ")
		vim.cmd.set(string.format("makeprg=%s",input))
	end)

end)

