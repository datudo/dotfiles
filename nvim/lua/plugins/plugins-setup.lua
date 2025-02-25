-- 定义 lazy.nvim 的安装路径
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- 若没有安装 lazy.nvim，则将源码克隆至安装路径
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- 使用稳定版
    lazypath,
  })
end

-- 将 lazypath 添加到 nvim 运行时路径的开头
vim.opt.rtp:prepend(lazypath)

-- 安装插件
require("lazy").setup({
  require("plugins.nvim-tree"),
  require("plugins.nvim-treesitter"),
  require("plugins.synthwave84"),
  require("plugins.vim-table-mode"),
  require("plugins.toggleterm"),
})
