-- init.lua
-- This file is the main configuration file for Neovim written in Lua.
-- It sets up keymaps, plugins, options, and appearance settings.

-- Load keymap configurations before loading plugins from lazy.
require("config.keymap")

-- https://lazy.folke.io/instalation
require("config.lazy")

-- Load options configuration for my user preferences
require("config.option")

-- Load autocommands
require("config.autocommand")

-- Set the colorscheme
vim.cmd([[colorscheme solarized ]])

vim.o.background = "dark"
