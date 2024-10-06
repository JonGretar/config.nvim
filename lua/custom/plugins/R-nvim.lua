-- R Support
return {
  'R-nvim/R.nvim',
  lazy = false,
  config = function()
    local options = {
      is_darwin = false,
      external_term = 'wezterm cli split-pane --bottom --percent 30  -- ',
      auto_quit = true,
      R_app = 'radian',
      bracketed_paste = true,

      pipe_keymap = '',
      assignment_keymap = '',
    }
    require('r').setup(options)
  end,
}
-- vim: ts=2 sts=2 sw=2 et
