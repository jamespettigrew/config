local t = require('telescope.builtin')

vim.keymap.set("n", "<leader>wsn", "<Cmd>new<CR>", { desc = "[S]plit [N]ew"})
vim.keymap.set("n", "<leader>wsf", "<Cmd>split :Telescope find_files<CR>", { desc = "[S]plit [F]ind"})
vim.keymap.set("n", "<leader>wst", "<Cmd>split :terminal<CR>", { desc = "[S]plit [T]erminal"})
vim.keymap.set("n", "<leader>wvn", "<Cmd>vertical :new<CR>", { desc = "[V]ertical split [N]ew"})
vim.keymap.set(
  "n",
  "<leader>wvf",
  function()
    vim.api.nvim_command("vsplit")
    t.find_files()
  end,
  { desc = "[V]ertical split [F]ind"}
)
vim.keymap.set("n", "<leader>wvt", "<Cmd>vertical :terminal<CR>", { desc = "[V]ertical split [T]erminal"})
vim.keymap.set("n", "<leader>wk", "<C-w>k<CR>", { desc = "Cursor above"})
vim.keymap.set("n", "<leader>wj", "<C-w>j<CR>", { desc = "Cursor below"})
vim.keymap.set("n", "<leader>wh", "<C-w>h<CR>", { desc = "Cursor left"})
vim.keymap.set("n", "<leader>wl", "<C-w>l<CR>", { desc = "Cursor right"})
vim.keymap.set("n", "<leader>wd", "<C-w>q<CR>", { desc = "Close focused"})
vim.keymap.set("n", "<leader>w=", "<C-w>=<CR>", { desc = "Equalise"})
