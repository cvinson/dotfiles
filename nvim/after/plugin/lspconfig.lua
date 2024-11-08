local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

lspconfig.gopls.setup({})

lspconfig.jedi_language_server.setup({})

lspconfig.tsserver.setup({
  init_options = {
    preferences = {
      disable_suggestions = true;
    }
  }
})
