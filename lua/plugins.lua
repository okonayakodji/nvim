vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  use { "wbthomason/packer.nvim" }
  use {
      "nvim-telescope/telescope.nvim",
      requires = { {"nvim-lua/plenary.nvim"}
  },
  use "neovim/nvim-lspconfig",
  use "hrsh7th/nvim-cmp",
  use "hrsh7th/cmp-nvim-lsp",
  use "sheerun/vim-polyglot",
  use "stevearc/oil.nvim",
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
}
end)
