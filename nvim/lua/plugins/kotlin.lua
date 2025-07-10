return {
  -- Add kotlinlsp to nvim-lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Kotlin language server configuration
        kotlin_language_server = {
          -- Customize settings as needed
          settings = {
            kotlin = {
              -- Additional options can be added here
              completion = {
                snippets = { enabled = true },
              },
              -- Uncomment any other settings as needed
              -- diagnostics = { enabled = true },
              -- formatting = { enabled = true },
            },
          },
        },
      },
    },
  },
  
  -- Ensure Mason installs the Kotlin language server
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "kotlin-language-server" })
      return opts
    end,
  },
  
  -- Add Kotlin to Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "kotlin" })
      return opts
    end,
  },
}