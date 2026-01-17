return {
  -- Replace tokyonight with bamboo
  'ribru17/bamboo.nvim',
  priority = 1000,

  config = function()
    -- Optional: configure bamboo before loading it
    require('bamboo').setup {
      -- Example options
      style = 'vulgaris', -- or "multiplex"
      -- transparent = true,
      -- dim_inactive = true,
    }

    -- Load the colorscheme
    vim.cmd.colorscheme 'bamboo'

    -- Your custom highlights still work:
    vim.cmd.hi 'Comment gui=none'
  end,
}
