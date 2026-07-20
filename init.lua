-- Load options first
require("config.options")

-- Load mappings
require("config.mappings")

-- Load plugins (using lazy.nvim)
require("config.lazy")

--require("config.diagnostics")

vim.opt.clipboard:append('unnamedplus')
