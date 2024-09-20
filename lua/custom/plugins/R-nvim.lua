-- R Support
return {
  'R-nvim/R.nvim',
  lazy = false,
  config = function()
    local options = {}
    require('r').setup(options)
  end,
}
-- vim: ts=2 sts=2 sw=2 et
