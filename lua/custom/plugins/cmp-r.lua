return {
  'R-nvim/cmp-r',
  config = function()
    require('cmp').setup { sources = { { name = 'cmp_r' } } }
    require('cmp_r').setup {}
  end,
}
