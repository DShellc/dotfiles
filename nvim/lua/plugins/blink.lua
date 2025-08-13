return {
  'saghen/blink.cmp',
  event = { 'BufReadPost', 'BufNewFile' },
  version = '1.*',
  dependencies = {
    {
      'L3MON4D3/LuaSnip',
      version = '2.*',
      build = 'make install_jsregexp',
      dependencies = {
        {
          'rafamadriz/friendly-snippets',
          config = function()
            require('luasnip.loaders.from_vscode').lazy_load()
          end,
        },
      },
      -- opts = {},
    },
    'folke/lazydev.nvim',
  }, --- @module 'blink.cmp'
  --- @type blink.cmp.Config
  opts = {
    keymap = {
      preset = 'enter',
      ['<C-y>'] = { 'select_and_accept' },
      -- ['<C-u>'] = { 'scroll_documentation_up', 'fallback' },
      -- ['<C-d>'] = { 'scroll_documentation_down', 'fallback' },
    },
    -- cmdline = { completion = { menu = { auto_show = false } } },
    completion = {
      menu = { border = 'rounded' },
      documentation = {
        window = {
          border = 'rounded',
        },
        auto_show = true,
      },
    },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'lazydev', 'buffer' },
      providers = {
        lazydev = { module = 'lazydev.integrations.blink', score_offset = 100 },
      },
    },
    snippets = { preset = 'luasnip' },

    -- By default, we use the Lua implementation instead, but you may enable
    -- the rust implementation via `'prefer_rust_with_warning'`

    fuzzy = { implementation = 'lua' },

    -- Shows a signature help window while you type arguments for a function
    signature = {
      enabled = true,
      window = { border = 'rounded' },
    },
  },
}
