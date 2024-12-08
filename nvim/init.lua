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
  highlight CursorLine guibg=#394264
]])

vim.cmd([[
  highlight Visual guibg=#394264
]])

-- Add this to your init.lua or a separate lua/colors.lua file
vim.cmd([[
  highlight Pmenu guibg=#2e3440 guifg=#d8dee9
  highlight PmenuSel guibg=#4c566a guifg=#ffffff
  highlight PmenuSbar guibg=#4c566a
  highlight PmenuThumb guibg=#ffffff
]])

vim.api.nvim_set_keymap(
  "n",
  "<leader>fl",
  ":lua require('telescope.builtin').live_grep({ search_dirs = vim.tbl_map(function(bufnr) return vim.fn.bufname(bufnr) end, vim.api.nvim_list_bufs()) })<CR>",
  { noremap = true, silent = true }
)
