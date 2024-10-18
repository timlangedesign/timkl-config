-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("timkl.options")

vim.cmd("highlight Normal guibg=none")
vim.cmd("highlight NonText guibg=none")

vim.cmd([[
  highlight TelescopeNormal guibg=none
  highlight TelescopeBorder guibg=none
  highlight TelescopePromptNormal guibg=none
  highlight TelescopePromptBorder guibg=none
  highlight TelescopeResultsNormal guibg=none
  highlight TelescopeResultsBorder guibg=none
  highlight TelescopePreviewNormal guibg=none
  highlight TelescopePreviewBorder guibg=none
]])
