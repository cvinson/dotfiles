require("conform").setup({
  formatters_by_ft = {
    typescript = { { "prettier" } },
    typescriptreact = { { "prettier" } },
  },
  format_on_save = {
    timout_ms = 500,
    lsp_fallback = true
  },
})
