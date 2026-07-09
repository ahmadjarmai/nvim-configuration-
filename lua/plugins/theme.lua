return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false, -- Load this during startup
    priority = 1000, -- Load this before all other plugins
    config = function()
      -- Configure the theme variant
      require("kanagawa").setup({
        theme = "dragon", -- options: wave, dragon, lotus
        background = {
          dark = "wave",
          light = "lotus"
        },
      })

      -- Load the colorscheme
      vim.cmd("colorscheme kanagawa")
    end,
  }
}

