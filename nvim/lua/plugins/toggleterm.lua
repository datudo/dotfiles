return{
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup ({
        size = 20, -- 终端窗口的高度
        open_mapping = [[<a-\>]], -- 打开或关闭终端的快捷键
        hide_numbers = true, -- 隐藏终端窗口中的行号
        shade_filetypes = {}, -- 需要阴影效果的文件类型
        shade_terminals = true, -- 给终端窗口添加阴影效果
        shading_factor = 1, -- 阴影效果的强度
        start_in_insert = true, -- 打开终端时自动进入插入模式
        insert_mappings = true, -- 在插入模式下是否支持快捷键
        persist_size = true, -- 保存终端窗口的大小
        direction = 'float', -- 终端窗口的打开方向，可选值有 'vertical'、'horizontal'、'float' 等
        close_on_exit = true, -- 关闭终端窗口时自动退出 Neovim
        shell = vim.o.shell, -- 终端使用的 shell
        float_opts = {
            border = 'curved', -- 浮动窗口的边框样式
            winblend = 3, -- 浮动窗口的透明度
            title_pos='center'
      },
      winbar = {
        enabled = false,
        name_formatter = function(term) --  term: Terminal
          return term.name
        end
      },
    })
  end
}
