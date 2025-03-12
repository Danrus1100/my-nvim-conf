-- Основные настройки
vim.opt.number = true -- Нумерация строк
vim.opt.relativenumber = true -- Относительные числа строк
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4 -- Ширина таба
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.mouse = 'a'
vim.opt.showmode = false -- Отключает встроенный показ текущего режима
vim.opt.fillchars:append("eob: ") -- Отключить символ ~ для пустых строк
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.cmdheight = 0
vim.opt.wrap = false


vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")
vim.cmd("hi EndOfBuffer guibg=NONE ctermbg=NONE")

