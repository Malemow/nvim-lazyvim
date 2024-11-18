-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.mouse = ""

-- Undercurl
vim.cmd([[let &t_Cs = "\n[4:3m]"]])
vim.cmd([[let &t_Ce = "\n[4:0m]"]])

local opt = vim.opt

opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 4 -- Size of an indent
opt.tabstop = 4 -- Number of spaces tabs count for
opt.softtabstop = 4 -- Spaces per Tab in insert mode
opt.smartindent = true -- Insert indents automatically
opt.list = true -- 顯示空格和其他不可見字符
opt.listchars = {
  space = "·", -- 空格用小點表示
  tab = "▸ ", -- Tab 用箭頭表示，後接一個空格
  trail = "·", -- 行尾多餘空格用小點表示
  extends = "→", -- 行超出窗口右側時顯示箭頭
  precedes = "←", -- 行超出窗口左側時顯示箭頭
  nbsp = "␣", -- 不可斷空格用特殊符號表示
}
