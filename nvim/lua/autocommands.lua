-- See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Create necessary sub-directories when creating a
-- new file through vim and saving with :w in a
-- non-existing file.
local mkdir_group = vim.api.nvim_create_augroup('Mkdir', { clear = true })

vim.api.nvim_create_autocmd('BufWritePre', {
  group = mkdir_group,
  callback = function()
    vim.fn.mkdir(vim.fn.expand '%:p:h', 'p')
  end,
})
-- Disable auto-commenting on new lines
-- vim.api.nvim_create_autocmd('BufEnter', {
--   desc = 'Disable auto-commenting on new lines',
--   group = vim.api.nvim_create_augroup('kickstart-formatoptions', { clear = true }),
--   pattern = '*',
--   callback = function()
--     vim.opt_local.formatoptions-='cro'
--   end,
-- })
