-- ========================================
-- Neovim Configuration (init.lua)
-- LazyVim-based setup with transparency
-- ========================================

-- ----------------------------------------
-- Core LazyVim Bootstrap
-- ----------------------------------------
require("config.lazy")
require("timkl.options")

-- ----------------------------------------
-- Global Settings
-- ----------------------------------------
vim.o.background = "dark"

-- ----------------------------------------
-- Transparency Configuration
-- ----------------------------------------
-- Base transparency
vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NonText guibg=NONE ctermbg=NONE
  highlight NormalFloat guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight LineNr guibg=NONE ctermbg=NONE
  highlight CursorLineNr guibg=NONE ctermbg=NONE
]])

-- Floating windows
vim.cmd([[
  highlight WhichKeyFloat guibg=NONE ctermbg=NONE
  highlight WhichKeyBorder guibg=NONE ctermbg=NONE
  highlight FloatBorder guibg=NONE ctermbg=NONE
]])

-- File explorers
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
  highlight TelescopePromptNormal guibg=NONE ctermbg=NONE
  highlight TelescopePromptBorder guibg=NONE ctermbg=NONE
  highlight TelescopeResultsNormal guibg=NONE ctermbg=NONE
  highlight TelescopeResultsBorder guibg=NONE ctermbg=NONE
  highlight TelescopePreviewNormal guibg=NONE ctermbg=NONE
  highlight TelescopePreviewBorder guibg=NONE ctermbg=NONE
]])

-- ----------------------------------------
-- UI Enhancements
-- ----------------------------------------
-- Cursor and selection highlighting
vim.cmd([[
  highlight CursorLine guibg=#394264
  highlight Visual guibg=#394264
]])

-- Completion menu styling
vim.cmd([[
  highlight Pmenu guibg=#2e3440 guifg=#d8dee9
  highlight PmenuSel guibg=#4c566a guifg=#ffffff
  highlight PmenuSbar guibg=#4c566a
  highlight PmenuThumb guibg=#ffffff
]])

-- ----------------------------------------
-- Custom Keymaps
-- ----------------------------------------
-- Live grep in open buffers
vim.api.nvim_set_keymap(
  "n",
  "<leader>fl",
  ":lua require('telescope.builtin').live_grep({ search_dirs = vim.tbl_map(function(bufnr) return vim.fn.bufname(bufnr) end, vim.api.nvim_list_bufs()) })<CR>",
  { noremap = true, silent = true }
)
