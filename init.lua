require("plugins")
require("settings")
require("keymaps")
require("completions")

-- vim.cmd [[highlight ExtraWhitespace ctermbg=red guibg=red]]

local lsp = require("lspconfig")
local on_attach = function(_, _)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
    vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lsp.pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

lsp.rust_analyzer.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
lsp.gopls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

