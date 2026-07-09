-- In your plugins/lint.lua (if you have one)
return {
  "mfussenegger/nvim-lint",
  event = "VeryLazy",
  config = function()
    local lint = require("lint")
    
    lint.linters_by_ft = {
      javascript = { "eslint" },
      typescript = { "eslint" },
      python = { "flake8" },
      -- add your filetypes
    }
    
    vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
      callback = function()
        lint.try_lint()
      end,
    })
    
    -- Show diagnostic messages on hover
    vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
  end,
}
