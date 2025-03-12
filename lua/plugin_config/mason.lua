-- Подключаем Mason
require("mason").setup()

-- Подключаем Mason-LSPConfig
require("mason-lspconfig").setup({
    ensure_installed = {"lua_ls" }, -- Список серверов LSP для автоустановки
    automatic_installation = true,
})

