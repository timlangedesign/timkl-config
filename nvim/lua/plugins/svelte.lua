return {
  {
    "leafOfTree/vim-svelte-plugin",
    ft = { "svelte" },
    config = function()
      vim.g.vim_svelte_plugin_use_typescript = 1
      vim.g.vim_svelte_plugin_use_sass = 1
      vim.g.vim_svelte_plugin_use_pug = 0
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      require("lspconfig").svelte.setup({})
    end,
  },
}
