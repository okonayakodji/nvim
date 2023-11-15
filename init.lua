require("plugins")
require("settings")
require("keymaps")

-- vim.cmd [[highlight ExtraWhitespace ctermbg=red guibg=red]]

local lsp = require("lspconfig")
lsp.pyright.setup {}
lsp.rust_analyzer.setup {}
lsp.gopls.setup {}
