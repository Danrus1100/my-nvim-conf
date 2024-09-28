-- Подключаем Mason
require("mason").setup()

-- Подключаем Mason-LSPConfig
require("mason-lspconfig").setup({
    ensure_installed = { "pyright", "lua_ls" }, -- Список серверов LSP для автоустановки
    automatic_installation = true,
})

