return {
  "mattn/emmet-vim",
  ft = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact", "svelte", "vue" },
  init = function()
    -- Enable emmet for specific filetypes
    vim.g.user_emmet_install_global = 0
    vim.cmd [[autocmd FileType html,css,javascript,javascriptreact,typescript,typescriptreact,svelte,vue EmmetInstall]]
    
    -- Configure emmet leader key (default is <C-y>)
    vim.g.user_emmet_leader_key = '<C-e>'
    
    -- Enable emmet expansion with Tab key
    vim.g.user_emmet_expandabbr_key = '<Tab>'
    
    -- Only enable Tab expansion in insert and visual modes
    vim.g.user_emmet_mode = 'iv'
  end,
}