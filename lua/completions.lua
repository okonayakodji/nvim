local cmp = require("cmp")

cmp.setup({
  completion = {
    autocomplete = {
      cmp.TriggerEvent.TextChanged,
      cmp.TriggerEvent.InsertEnter,
    },
    completeopt = "menuone,noinsert,noselect",
    keyword_length = 0,
  },
  mappings = cmp.mapping.preset.insert({
    ["<C-o>"] = cmp.mapping.complete(),
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<CR>"] = cmp.mapping.confirm({select = true}),
  }),
  sources = cmp.config.sources({
      { name = "nvim_lsp" },
      { name = "buffer" },
  }),
})

