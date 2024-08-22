local lsp_zero = require('lsp-zero')
local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

vim.api.nvim_set_hl(0, "MyMenuSel", { bg = "LightMagenta", fg = "Black", bold = true, italic = true })

cmp.setup({
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
  enabled = function()
    return vim.g.cmptoggle
  end,
  formatting = lsp_zero.cmp_format({
    mode = 'symbol',
    max_width = 50,
    symbol_map = { Copilot = '[]' }
  }),
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<tab>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
  preselect = 'item',
  sources = {
    { name = 'copilot', group_index = 2 },
    { name = 'path' },
    { name = 'nvim_lsp' },
    { name = 'nvim_lua' },
    { name = 'luasnip' },
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  window = {
    completion = cmp.config.window.bordered({
      winhighlight = 'Normal:Pmenu,CursorLine:MyMenuSel',
    }),
    documentation = cmp.config.window.bordered({
      winhighlight = 'Normal:Pmenu',
    }),
  }
})
