-- Подключаем необходимые модули
local cmp = require('cmp')
local luasnip = require('luasnip')

-- Настройка nvim-cmp
cmp.setup({
  snippet = {
    -- Указываем LuaSnip как движок сниппетов
    expand = function(args)
      luasnip.lsp_expand(args.body) -- Для LuaSnip
    end,
  },
  mapping = {
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  -- Настройка источников для автодополнения
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },    -- Источник LSP
    { name = 'luasnip' },     -- Источник сниппетов
    { name = 'buffer' },      -- Источник буфера
    { name = 'path' },        -- Источник путей
  }),
})

-- Настройка для автодополнения командной строки
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'path' },
    { name = 'cmdline' }
  }
})

