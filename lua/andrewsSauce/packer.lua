-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use { "catppuccin/nvim", as = "catppuccin" }

use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('theprimeagen/harpoon')
use('mbbill/undotree')
use('tpop/vim-fugitive')
use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}

end)

