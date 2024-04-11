-- line numbers
Opt.relativenumber = true
Opt.number = true

-- tabs & indentation
Opt.tabstop = 2
Opt.shiftwidth = 2
Opt.expandtab = true
Opt.autoindent = true
-- Opt.softtabstop = 2

-- scroll
Opt.scrolloff = 10

-- line wrapping
Opt.wrap = false

-- search settings
Opt.ignorecase = true
Opt.smartcase = true
Opt.incsearch = true

-- cursor line
Opt.cursorline = true

-- appearance
Opt.laststatus = 3
Opt.signcolumn = "yes:1"
Opt.background = "dark"
Opt.termguicolors = true
Opt.confirm = true

-- backspace
Opt.backspace = "indent,eol,start"

-- clipboard
Opt.clipboard:append("unnamedplus")

-- swap file
Opt.swapfile = false
Opt.backup = false

-- split windows
Opt.splitright = true
Opt.splitbelow = true

Opt.iskeyword:append("-")

Opt.fillchars = {
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
local group = Api.nvim_create_augroup("PyIndentSize", { clear = true })
ApiAutocmd("FileType", { pattern = "python", command = "setlocal tabstop=2 shiftwidth=2 expandtab", group = group })
