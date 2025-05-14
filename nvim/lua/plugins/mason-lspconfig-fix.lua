-- Disables the old, broken LazyVim reference to `mappings.server`
return {
  "williamboman/mason-lspconfig.nvim",
  opts = function(_, opts)
    -- no-op fix: just override to prevent broken LazyVim reference from running
    opts = opts or {}
    return opts
  end,
}