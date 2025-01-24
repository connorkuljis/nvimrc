-- plugins/lsp.lua

-- LSP Configuration Plugin
local lsp = {
	{
		"neovim/nvim-lspconfig",
		enabled = true,
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.gopls.setup({ capabilities = capabilities })
			lspconfig.zls.setup({ capabilities = capabilities })
			lspconfig.pyright.setup({ capabilities = capabilities })

			-- LSP auto-formatting on save
			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("lsp", { clear = true }),
				callback = function(args)
					vim.api.nvim_create_autocmd("BufWritePre", {
						buffer = args.buf,
						callback = function()
							vim.lsp.buf.format { async = false, id = args.data.client_id }
						end,
					})
				end
			})
		end,
	},
}

return lsp
