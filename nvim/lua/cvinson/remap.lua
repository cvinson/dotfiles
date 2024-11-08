vim.g.mapleader = " "

vim.api.nvim_create_user_command("W", ":write", { bang = true, desc = "Write the file" })

vim.keymap.set("n", "<leader>c", ":noh<CR>")
vim.keymap.set("n", "<leader>h", ":e ~/.config/nvim/cheatsheet.md<CR>")
vim.keymap.set("n", "<leader>pv", ":Ex<CR>")
vim.keymap.set("n", "<leader>yf", ":let @+ = expand(\"%\")<CR>")

vim.keymap.set("n", "<C-n>", ":bnext<CR>")
vim.keymap.set("n", "<C-p>", ":bprevious<CR>")
vim.keymap.set("n", "<leader>d", ":bdelete<CR>")
vim.keymap.set("n", "<leader>bo", ":Bonly<CR>")

vim.keymap.set("n", "<leader>i", ":e ~/.config/nvim/init.lua<CR>")
vim.keymap.set("n", "<leader><CR>", ":so ~/.config/nvim/init.lua<CR>")

vim.keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>m", ":NvimTreeFindFile<CR>")

-- Move visual blocks around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move search results to center of screen.
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste over selection puts selection in void register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank to + register (system clipboard)
vim.keymap.set({ "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(_, bufnr)
  lsp_zero.default_keymaps({ buffer = bufnr })
end)

vim.keymap.set("n", "<leader>rl", "<cmd>lua vim.g.cmptoggle = not vim.g.cmptoggle<CR>", { desc = "toggle nvim-cmp" })
vim.keymap.set("n", "<leader>ee", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>")
vim.keymap.set("n", "<leader>ea", "<cmd>Trouble diagnostics toggle<CR>")
vim.keymap.set("n", "<leader>eq", "<cmd>Trouble qflist toggle<CR>")
vim.keymap.set("n", "<leader>gp", vim.lsp.buf.hover)

local ts_builtin = require('telescope.builtin')

vim.keymap.set("n", "<C-t>", ts_builtin.git_files, {})
vim.keymap.set("n", "<leader>ff", ts_builtin.find_files, {})
vim.keymap.set("n", "<leader>fs", ts_builtin.live_grep, {})
vim.keymap.set("n", "<leader>fj", ts_builtin.jumplist, {})

vim.g.copilot_no_tab_map = true
