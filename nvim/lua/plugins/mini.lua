return {
  -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  event = 'VeryLazy',
  config = function()
    -- Better Around/Inside textobjects
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
    --  - ci'  - [C]hange [I]nside [']quote
    -- require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup()

    require('mini.icons').setup {
      style = 'glyph',
      file = {
        README = { glyph = '󰆈', hl = 'MiniIconsYellow' },
        ['README.md'] = { glyph = '󰆈', hl = 'MiniIconsYellow' },
      },
      filetype = {
        bash = { glyph = '󱆃', hl = 'MiniIconsGreen' },
        sh = { glyph = '󱆃', hl = 'MiniIconsGrey' },
        toml = { glyph = '󱄽', hl = 'MiniIconsOrange' },
      },
    }
  end,
}
