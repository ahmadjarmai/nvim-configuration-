vim.keymap.set("n", "<Leader>w", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<Leader>y", '"+y', { noremap = true, silent = true }) 
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { silent = true })
vim.keymap.set("n", "<C-t>", ":NvimTreeFindFile<CR>", { silent = true })
