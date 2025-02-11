return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- 安装时自动更新 Treesitter
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "c", "cpp", "lua", "python", "markdown", "markdown_inline" }, -- 确保安装的语言解析器
      sync_install = false, -- 是否同步安装
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = true, -- 启用备用高亮
      },
      indent = { enable = true }, -- 启用自动缩进
    })
  end,
}
