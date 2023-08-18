-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}
lspconfig.tsserver.setup {}
lspconfig.lua_ls.setup {}
lspconfig.rust_analyzer.setup {
	-- Server-specific settings. See `:help lspconfig-setup`
	settings = {
		['rust-analyzer'] = {},
	},
}
vim.api.nvim_create_autocmd('BufWritePre',{
	buffer = buffer,
	callback = function()
		vim.lsp.buf.format {async = false }
	end
})
