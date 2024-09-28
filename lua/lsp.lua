local lspconfig = require("lspconfig")

-- Пример конфигурации для Python через Pyright
lspconfig.pyright.setup {}

lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }, -- Указать vim как глобальную переменную
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true), -- Включить библиотеки Neovim
      },
      telemetry = {
        enable = false, -- Отключить телеметрию
      },
    },
  },
}

