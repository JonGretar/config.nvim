-- WezTerm integration
vim.api.nvim_create_autocmd({ 'BufEnter' }, {
  callback = function(event)
    local title = 'nvim'
    if event.file ~= '' then
      title = string.format(' %s', vim.fs.basename(event.file))
    end

    vim.fn.system { 'wezterm', 'cli', 'set-tab-title', title }
  end,
})

vim.api.nvim_create_autocmd({ 'VimLeave' }, {
  callback = function()
    -- Setting title to empty string causes wezterm to revert to its
    -- default behavior of setting the tab title automatically
    vim.fn.system { 'wezterm', 'cli', 'set-tab-title', '' }
  end,
})
