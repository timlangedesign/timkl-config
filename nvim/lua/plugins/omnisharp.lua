-- ~/.config/nvim/lua/plugins/omnisharp.lua

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        omnisharp = {},
      },
      setup = {
        omnisharp = function(_, opts)
          local util = require("lspconfig.util")
          local pid = tostring(vim.fn.getpid())

          opts.cmd = {
            "/opt/homebrew/bin/omnisharp",
            "--languageserver",
            "--hostPID",
            pid,
          }

          opts.root_dir = util.root_pattern("Florpy Bird.sln") or util.root_pattern("*.sln") or vim.fn.getcwd()

          opts.enable_import_completion = true
          opts.organize_imports_on_format = true
          opts.enable_roslyn_analyzers = true
          opts.enable_editorconfig_support = true

          require("lspconfig").omnisharp.setup(opts)
          return true
        end,
      },
    },
  },
}
