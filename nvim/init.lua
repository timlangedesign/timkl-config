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

-- Set color scheme and transparency globally
vim.o.background = "dark" -- Dark background

-- Transparency for main window and splits
vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NonText guibg=NONE ctermbg=NONE
  highlight NormalFloat guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight LineNr guibg=NONE ctermbg=NONE
  highlight CursorLineNr guibg=NONE ctermbg=NONE
]])

-- Which-Key transparency
vim.cmd([[
  highlight WhichKeyFloat guibg=NONE ctermbg=NONE
  highlight WhichKeyBorder guibg=NONE ctermbg=NONE
  highlight NormalFloat guibg=NONE ctermbg=NONE
  highlight FloatBorder guibg=NONE ctermbg=NONE
]])

-- File explorer transparency for NvimTree and NeoTree (depending on your setup)
vim.cmd([[
  highlight NvimTreeNormal guibg=NONE ctermbg=NONE
  highlight NvimTreeEndOfBuffer guibg=NONE ctermbg=NONE
  highlight NvimTreeNormalNC guibg=NONE ctermbg=NONE
  highlight NeoTreeNormal guibg=NONE ctermbg=NONE
  highlight NeoTreeEndOfBuffer guibg=NONE ctermbg=NONE
  highlight NeoTreeNormalNC guibg=NONE ctermbg=NONE
]])

-- Telescope transparency
vim.cmd([[
  highlight TelescopeNormal guibg=NONE ctermbg=NONE
  highlight TelescopeBorder guibg=NONE ctermbg=NONE
]])

-- General floating windows (covering all possibilities for floating transparency)
vim.cmd([[
  highlight Pmenu guibg=NONE ctermbg=NONE
  highlight PmenuSel guibg=NONE ctermbg=NONE
  highlight FloatBorder guibg=NONE ctermbg=NONE
]])

vim.cmd([[
  highlight CursorLine guibg=#31410A
]])

vim.cmd([[
  highlight Visual guibg=#31410A
]])
