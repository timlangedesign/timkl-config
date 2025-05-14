-- Ensure Telescope is loaded early enough for Alpha dashboard
return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup({})
  end,
  lazy = false, -- force load at startup
}