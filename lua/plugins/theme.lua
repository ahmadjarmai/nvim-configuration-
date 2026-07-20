return {
  {
    "folke/tokyonight.nvim",
    lazy = false, -- Load this during startup
    priority = 1000, -- Load this before all other plugins
    config = function()
      -- Configure the theme variant
      require("tokyonight").setup({
        style = "storm", -- Options: "night", "storm", "moon", "day"
        transparent = false,
        terminal_colors = true,
        -- Additional customization can go here
      })

      -- Load the colorscheme
      vim.cmd("colorscheme tokyonight")
    end,
  }
}   
