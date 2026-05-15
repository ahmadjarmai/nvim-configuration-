require('lspconfig').lua_ls.setup({
  settings = {
    Lua = {
      telemetry = { enable = false },
    },
  },
  on_init = function(client)
    local nvim_settings = {
      runtime = { version = 'LuaJIT' },
      diagnostics = { globals = { 'vim' } },
      workspace = {
        checkThirdParty = false,
        library = { vim.env.VIMRUNTIME, vim.fn.stdpath('config') },
      },
    }
    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, nvim_settings)
  end,
})   
