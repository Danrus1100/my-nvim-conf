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

-- Настройка rust-analyzer
lspconfig.rust_analyzer.setup({
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
      },
      checkOnSave = {
        command = "clippy",  -- Использование Clippy для проверки кода
      },
    },
  }
})

-- Настройка для языка Go 
lspconfig.gopls.setup {
  cmd = {"gopls"},
  filetypes = {"go", "gomod"},
  root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
}
