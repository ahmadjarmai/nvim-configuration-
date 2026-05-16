
-- ~/.config/nvim/lua/plugins/toggleterm.lua

return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 10,
      open_mapping = [[<c-\>]], -- Ctrl + \
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = "horizontal", -- horizontal | vertical | float | tab
      close_on_exit = true,
      shell = vim.o.shell,
    })

    -- Optional keymaps
    vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>")
    vim.keymap.set("n", "<leader>tv", ":ToggleTerm direction=vertical size=60<CR>")
    vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>")
  end,
}
