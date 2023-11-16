require("plugins")
require("settings")
require("completions")
require("keymaps")

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

local lsp_servers = {
    lsp.pyright,
    lsp.gopls,
    lsp.rust_analyzer,
    lsp.hls,
    lsp.lua_ls,
    lsp.marksman,
}

for _, server in ipairs(lsp_servers) do
    server.setup {
        on_attach = on_attach,
        capabilities = capabilities
    }
end


require("luasnip.loaders.from_snipmate").load({ path = {"./snippets"}})
require("luasnip.loaders.from_vscode").lazy_load()

require("telescope").setup {
        defaults = {
            layout_strategy = "vertical",
            previewer = true,
            file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
            grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
            qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
        },
}
