-- plugins/telescope.lua

local function config()
	-- Require Telescope
	local telescope = require("telescope")
	local builtin = require("telescope.builtin")

	-- Set up the keybinding for <leader>f to open find_files
	vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Find files" })
end

local telescope = {
	{
		"nvim-telescope/telescope.nvim",
		enabled = true,
		opts = {},
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = config,
	},
}

return telescope
