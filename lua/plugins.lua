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
  use "hrsh7th/cmp-buffer",
  use "hrsh7th/cmp-path",
  use "sheerun/vim-polyglot",
  use ({
      "stevearc/oil.nvim",
      config = function ()
        require("oil").setup({
            default_file_explorer = true,
            columns = {"icon", "size", "permissions"},
        })
      end,
  }),
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
  use "L3MON4D3/LuaSnip", -- snippet engine
  use "saadparwaiz1/cmp_luasnip", -- for autocompletion
  use "rafamadriz/friendly-snippets", -- useful snippets
  use "nvim-lua/plenary.nvim",
  use "fatih/vim-go",
  use {
    "renerocksai/telekasten.nvim",
    requires = {"nvim-telescope/telescope.nvim"}
  },
  use "sindrets/diffview.nvim",
  use "airblade/vim-gitgutter",
  use { "ellisonleao/gruvbox.nvim" },
}
end)
