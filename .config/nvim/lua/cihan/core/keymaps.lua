G.mapleader = " "

-- command
Keymap.set("n", "<leader><leader>", ":")

-- clear search highlights
Keymap.set("n", "<leader>nh", "<CMD>nohl<CR>")

-- quit and kill options
Keymap.set("n", "<leader>da", "<CMD>only!<CR>")
Keymap.set("n", "<leader>dq", "<CMD>qall!<CR>")
Keymap.set("n", "<leader>db", "<CMD>%bd|e#|bd#<CR>")

-- manipulating character without copying into register
-- Keymap.set("n", "ciw", '"_ciw')
-- Keymap.set("n", "x", '"_x')
-- Keymap.set("n", "d", '"_dd')
-- Keymap.set("n", "D", '"_D')
-- Keymap.set("v", "ciw", '"_ciw')
-- Keymap.set("v", "x", '"_x')
-- Keymap.set("v", "d", '"_dd')
-- Keymap.set("v", "D", '"_D')
-- Keymap.set("v", "c", '"_c')

-- window management
Keymap.set("n", "<Tab>", "<CMD>bn<CR>")
Keymap.set("n", "<S-Tab>", "<CMD>bp<CR>")

Keymap.set("n", "<C-h>", "<C-w>h")
Keymap.set("n", "<C-j>", "<C-w>j")
Keymap.set("n", "<C-k>", "<C-w>k")
Keymap.set("n", "<C-l>", "<C-w>l")

Keymap.set("n", "<leader>sv", "<C-w>v")
Keymap.set("n", "<leader>sh", "<C-w>s")
Keymap.set("n", "<leader>se", "<C-w>=")
Keymap.set("n", "<leader>sx", "<CMD>close<CR>")

Keymap.set("n", "<leader>to", "<CMD>tabnew<CR>")
Keymap.set("n", "<leader>tx", "<CMD>tabclose<CR>")
Keymap.set("n", "<leader>tn", "<CMD>tabn<CR>")
Keymap.set("n", "<leader>tp", "<CMD>tabp<CR>")

-- block options
Keymap.set("x", "<C-j>", ":m '>+1<CR>gv-gv")
Keymap.set("x", "<C-k>", ":m '<-2<CR>gv-gv")

Keymap.set("x", "<", "<-2<CR>gv-gv")
Keymap.set("x", ">", ">+1<CR>gv-gv")

-- resize
Keymap.set("n", "<leader>rp", "<CMD>resize -2<CR>")
Keymap.set("n", "<leader>rm", "<CMD>resize +2<CR>")
Keymap.set("n", "<leader>vm", "<CMD>vertical resize -2<CR>")
Keymap.set("n", "<leader>vp", "<CMD>vertical resize +2<CR>")
