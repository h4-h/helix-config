return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'                -- package control
  use 'ellisonleao/gruvbox.nvim'              -- theme
  use 'tpope/vim-fugitive'                    -- git tui

  use {                                       -- file search
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    requires = {
      'nvim-lua/plenary.nvim',                -- general functions
    }                                         -- used in: telescope, vgit, neogit, neo-tree
  }
  
  use {                                       -- lsp
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  use {                                       -- autocompletion
    'ms-jpq/coq_nvim',
    branch = 'coq',
  }
end)
