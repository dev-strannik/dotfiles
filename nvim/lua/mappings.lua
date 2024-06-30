require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map({ "n", "v" }, ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>lc", ":VimtexCompile<CR>", {desc = "VimTex compile"})
map("n", "<leader>lv", ":VimtexView<CR>", {desc = "VimTex view"})
map("n", "<leader>lq", ":VimtexStop<CR>", {desc = "VimTex stop compiling"})
map("n", "<leader>ll", ":VimtexImapsList<CR>", {desc = "VimTex list imaps"})
map("n", "<leader>lt", ":VimtexTocToggle<CR>", {desc = "VimTex Toggle table of contents"})
