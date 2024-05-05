-- consistency
G = {
  g = vim.g,
  o = vim.o,
  api = vim.api,
  cmd = vim.cmd,
  opt = vim.opt,
  fn = vim.fn,
  loop = vim.loop,
  diagnostic = vim.diagnostic,
  keymap = vim.keymap,
  opts = { noremap = true, silent = true },
  autocmd = vim.api.nvim_create_autocmd,
  color = vim.api.nvim_set_hl,
}
-- custom colors
Colors = {
  none = "NONE",
  grey54 = "#8a8a8a", -- active
  grey35 = "#585858", -- inactive
  background = "#1c1c1c",
  zero = "#000000",
  black = "#252525",
  ash = "#505050",
  grey = "#777777",
  white = "#aaaaaa",
  red = "#cc7070",
  green = "#70aa70",
  greenish = "#5fffaf",
  yellow = "#aaaa70",
}
