-- line numbers
G.opt.relativenumber = true
G.opt.number = true

-- tabs & indentation
G.opt.tabstop = 2
G.opt.shiftwidth = 2
G.opt.expandtab = true
G.opt.autoindent = true
-- Opt.softtabstop = 2

-- scroll
G.opt.scrolloff = 10

-- line wrapping
G.opt.wrap = false

-- search settings
G.opt.ignorecase = true
G.opt.smartcase = true
G.opt.incsearch = true

-- cursor line
G.opt.cursorline = true

-- appearance
G.opt.laststatus = 3
G.opt.signcolumn = "yes:1"
G.opt.background = "dark"
G.opt.termguicolors = true
G.opt.confirm = true

-- backspace
G.opt.backspace = "indent,eol,start"

-- clipboard
G.opt.clipboard:append("unnamedplus")

-- swap file
G.opt.swapfile = false
G.opt.backup = false

-- split windows
G.opt.splitright = true
G.opt.splitbelow = true

G.opt.iskeyword:append("-")

G.opt.fillchars = {
  vert = "│",
  fold = "⠀",
  eob = " ",
  --diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
  msgsep = "‾",
  foldopen = "▾",
  foldsep = "│",
  foldclose = "▸",
}

-- languages
local group = G.api.nvim_create_augroup("PyIndentSize", { clear = true })
G.autocmd("FileType", { pattern = "python", command = "setlocal tabstop=2 shiftwidth=2 expandtab", group = group })
