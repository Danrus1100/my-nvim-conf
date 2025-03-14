-- -- Автоматическая установка Packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
end

-- Подключаем плагины
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-lualine/lualine.nvim'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'       -- Источник из текущего буфера
    use 'hrsh7th/cmp-path'         -- Источник для файлов и путей
    use 'hrsh7th/cmp-cmdline'      -- Источник для командной строки
    use 'saadparwaiz1/cmp_luasnip' -- Источник для LuaSnip
    use 'andweeb/presence.nvim'    -- Discord presence
 --   use { 'AlphaTechnolog/pywal.nvim', as = 'pywal' }

    -- Сниппеты
    use 'L3MON4D3/LuaSnip'         -- LuaSnip - движок сниппетов
    use 'rafamadriz/friendly-snippets' -- Большая коллекция готовых сниппетов

    -- LSP конфигурации
    use 'neovim/nvim-lspconfig'    -- LSP клиент для Neovim
    use 'williamboman/mason.nvim'  -- Для автоматической установки LSP серверов
    use 'williamboman/mason-lspconfig.nvim' -- Интеграция Mason с nvim-lspconfig
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- Необязательно, для иконок
            "MunifTanjim/nui.nvim",
        }
    }
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig", -- Необходим для работы с LSP
    }
    use {'nvim-telescope/telescope.nvim', tag = '0.1.8',}
    use {
        'github/copilot.vim',
        config = function()
            vim.g.copilot_no_tab_map = false -- Отключаем стандартную привязку к клавише Tab
        end
    }
    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }


    -- Вызов отдельных конфигураций плагинов
    require('plugin_config.lualine')
    require('plugin_config.cmp')
    require('plugin_config.treesitter')
    require('plugin_config.neotree')
    require('plugin_config.mason')
    --require('plugin_config.pywal')  
    require('plugin_config.presence')
end)
