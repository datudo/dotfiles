return {
  "lunarvim/synthwave84.nvim",
  priority = 1000,

  config = function()
    vim.cmd.colorscheme("synthwave84")
    require('synthwave84').setup({
      glow = {
        error_msg = true,
        type2 = true,
        func = true,
        keyword = true,
        operator = false,
        buffer_current_target = true,
        buffer_visible_target = true,
        buffer_inactive_target = true,
      }
    })
  end,
}

