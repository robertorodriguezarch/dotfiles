-- init.lua
require('lazy').setup({
	{ 'neovim/nvim-lspconfig' },
	{ 'williamboman/mason.nvim' },
	{ 'nvim-neo-tree/neo-tree.nvim' },
	{ 'kyazdani42/nvim-web-devicons' },
	{ 'nvim-telescope/telescope.nvim' },
	{ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
	{ 'nvim-lua/plenary.nvim' }, 
	{ 'akinsho/bufferline.nvim' },
	{ 'mfussenegger/nvim-jdtls' },
	{ 'habamax/vim-habamax' },
	{ 'Saghen/blink.cmp' },
	{ 'echasnovski/mini.pairs' },
	{ 'echasnovski/mini.icons' },
	{ 'hrsh7th/nvim-cmp' },
	{ 'folke/flash.nvim' },
	{ 'MunifTanjim/nui.nvim' },
	{ 'folke/which-key.nvim' },
	{ 'folke/trouble.nvim' },
	{ 'stevearc/conform.nvim' },
	{ 'folke/persistence.nvim' },

})

require('mason').setup()

require('telescope').setup{
  defaults = {
    prompt_prefix = "> ",   -- Prefix for the search prompt
    selection_caret = "> ", -- Caret for selected items
    path_display = { "smart" }, -- Smart display for file paths
    file_sorter = require('telescope.sorters').get_fuzzy_file, -- Use fuzzy matching for files
    sorting_strategy = "ascending", -- Sort results in ascending order
    layout_strategy = "horizontal", -- Layout for results
    layout_config = {
      width = 0.75,        -- Set width of Telescope window
      preview_width = 0.6, -- Set preview window width
    },
    file_ignore_patterns = { "node_modules", ".git" }, -- Ignore files in node_modules or git
  }
}

vim.g.mapleader = " "
-- Keybindings for Telescope
vim.api.nvim_set_keymap('n', '<leader>f', ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>b', ":Telescope buffers<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>p', ":Telescope live_grep<CR>", { noremap = true, silent = true })

-- init.lua
-- Switch to next buffer
vim.api.nvim_set_keymap('n', '<Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })

-- Switch to previous buffer
vim.api.nvim_set_keymap('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })

-- Close the current buffer
vim.api.nvim_set_keymap('n', '<leader>q', ':bdelete<CR>', { noremap = true, silent = true })

vim.o.relativenumber = true
vim.o.number = true

vim.cmd('colorscheme habamax')

vim.api.nvim_set_keymap('n', '<leader>e', ':Neotree toggle<CR>', { noremap = true, silent = true })
