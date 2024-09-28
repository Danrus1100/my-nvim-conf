require("neo-tree").setup({
  close_if_last_window = true, -- Автоматически закрывать Neo-tree, если это последнее окно
  popup_border_style = "rounded", -- Закругленные границы для попапов
  enable_git_status = true, -- Показать статус Git для файлов
  enable_diagnostics = true, -- Включить отображение диагностики LSP

  filesystem = {
    filtered_items = {
      hide_dotfiles = false, -- Показать скрытые файлы
      hide_gitignored = true, -- Скрывать файлы, игнорируемые Git
      hide_by_name = {
        "node_modules"
      },
    },
    follow_current_file = {
        enabled = true
    },
  },

  window = {
    width = 30, -- Ширина боковой панели Neo-tree
    mappings = {
      ["o"] = "open", -- Открыть файл или папку
      ["<CR>"] = "open", -- Открыть с помощью Enter
      ["<C-s>"] = "split_with_window_picker", -- Открыть в горизонтальном сплите
      ["<C-v>"] = "vsplit_with_window_picker", -- Открыть в вертикальном сплите
    }
  },
})

