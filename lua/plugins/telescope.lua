return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    -- Setup Telescope with default config
    telescope.setup({})

    -- Key mappings
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Find text" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.oldfiles, { desc = "Find history" })
    vim.keymap.set("n", "<leader>fc", builtin.commands, { desc = "Find commands" })
    vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Find keymaps" })
  end,
}
