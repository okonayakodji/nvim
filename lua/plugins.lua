vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  use { "wbthomason/packer.nvim" }
  use {
      "nvim-telescope/telescope.nvim",
      requires = { {"nvim-lua/plenary.nvim"}
  },
  use "neovim/nvim-lspconfig",
  use "sheerun/vim-polyglot",
  use "stevearc/oil.nvim",
  use "nvim-lua/completion-nvim",
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
}
end)
