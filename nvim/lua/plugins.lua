-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
    -- Add Rose Pine colorscheme
    use {
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    }
    -- treesitter
    use('nvim-treesitter/nvim-treesitter',{run = ':TSUpdate'})

    --harpoon
use "nvim-lua/plenary.nvim"
use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
}
    --undotree
use('mbbill/undotree')

    --lsp
    use 'neovim/nvim-lspconfig'           -- LSP configurations
    use 'williamboman/mason.nvim'         -- LSP server manager
    use 'williamboman/mason-lspconfig.nvim' -- Integration for mason with lspconfig
    use 'hrsh7th/nvim-cmp'                -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp'            -- LSP completion source for nvim-cmp
end)

