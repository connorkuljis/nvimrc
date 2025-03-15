-- config/keymap.lua

-- Unbind space
vim.keymap.set("n", "<space>", "<nop>")

-- Map leader
vim.g.mapleader = " "

-- Map local leader
vim.g.maplocalleader = "\\"

-- reload config
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR> <cmd>echo 'reloaded config!'<CR>")

-- Open Explore
vim.keymap.set("n", "<leader>e", "<cmd>Explore <CR>")

-- Define a custom command to open ~/.config/nvim
vim.api.nvim_create_user_command('EditConfig', function()
	vim.cmd('edit ~/.config/nvim')
end, {})
