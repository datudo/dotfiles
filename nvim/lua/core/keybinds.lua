-- noremap = true 表示禁止递归
-- silent =true 表示静默执行，不显示命令


--leader
vim.g.mapleader = " "

-- normal
vim.keymap.set("n", "vv", "<C-v>", { noremap = true, silent = true }) -- 进入visual block
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true }) -- 保存
vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true, silent = true }) -- 退出
vim.keymap.set("n", "<leader>wq", ":wq<CR>", { noremap = true, silent = true }) -- 保存并退出 
--vim.keymap.set("n", "<leader>w", "w<CR>", { noremap = true, silent = true }) -- 保存
--vim.keymap.set("n", "vv", "<C-v>", { noremap = true, silent = true }) -- 进入visual block
--vim.keymap.set("n", "<leader>w", "w<CR>", { noremap = true, silent = true }) -- 保存







--visual
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true }) -- 下移选中的多行
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true }) -- 上移选中的多行

--insert
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true }) -- 设置 jk 退出插入模式









