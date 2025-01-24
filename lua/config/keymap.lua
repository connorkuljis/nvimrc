-- config/keymap.lua

-- Unbind space
vim.keymap.set("n", "<space>", "<nop>")

-- Map leader
vim.g.mapleader = " "

-- Map local leader
vim.g.maplocalleader = "\\"

-- reload config
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR> <cmd>echo 'reloaded config!'<CR>")
