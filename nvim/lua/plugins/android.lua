return {
  -- Android development plugin for Neovim
  {
    "dbeecham/android-nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("android").setup {
        -- Specify your Android SDK path
        sdk_path = "/opt/homebrew/bin/adb",
        -- Enable the plugin features
        build_and_run = true,
        launch_emulator = true,
        clean_build = true,
      }
    end,
  },
}