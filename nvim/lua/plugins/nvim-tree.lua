local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- 默认映射
  api.config.mappings.default_on_attach(bufnr)

  -- 自定义映射
  vim.keymap.set("n", "l", api.node.open.edit, opts("Open")) -- 使用 `l` 打开文件或文件夹
  vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close Directory")) -- 使用 `h` 关闭文件夹
  vim.keymap.set("n", "v", api.node.open.vertical, opts("Open: Vertical Split")) -- 使用 `v` 垂直分屏打开文件
  vim.keymap.set("n", "s", api.node.open.horizontal, opts("Open: Horizontal Split")) -- 使用 `s` 水平分屏打开文件
  vim.keymap.set("n", "<C-t>", api.node.open.tab, opts("Open: New Tab")) -- 使用 `<C-t>` 在新标签页打开文件
end

return {
  "nvim-tree/nvim-tree.lua",
  version = "*", -- 使用最新版本
  lazy = false, -- 不延迟加载
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- 用于显示文件图标
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30, -- 设置文件树宽度
      },
      renderer = {
        group_empty = true, -- 折叠空文件夹
      },
      filters = {
        dotfiles = true, -- 显示隐藏文件
      },
      on_attach = my_on_attach, -- 绑定自定义按键映射
    })

    -- 禁用 netrw
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- 全局快捷键：切换文件树
    vim.keymap.set("n", "<A-h>", ":NvimTreeToggle<CR>", { silent = true, noremap = true })
  end,
}
