vim.opt.breakindent = true
vim.opt.clipboard:append("unnamedplus")
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.ignorecase = true
vim.opt.number = true
vim.opt.shiftwidth = 4
vim.opt.smartcase = true
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.swapfile = false
vim.opt.wrap = true
vim.cmd [[highlight! link SignColumn LineNr]]
vim.cmd [[autocmd BufWritePost,FileWritePost * silent! :%s/\s\+$]]
vim.diagnostic.config({
  virtual_text = true 
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
