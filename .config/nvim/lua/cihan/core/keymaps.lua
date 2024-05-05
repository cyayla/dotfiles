G.g.mapleader = " "

-- command
G.keymap.set("n", "<leader><leader>", ":")

-- clear search highlights
G.keymap.set("n", "<leader>nh", "<CMD>nohl<CR>")

-- quit and kill options
G.keymap.set("n", "<leader>da", "<CMD>only!<CR>")
G.keymap.set("n", "<leader>dq", "<CMD>qall!<CR>")
G.keymap.set("n", "<leader>db", "<CMD>%bd|e#|bd#<CR>")

-- manipulating character without copying into register
-- G.keymap.set("n", "ciw", '"_ciw')
-- G.keymap.set("n", "x", '"_x')
-- G.keymap.set("n", "d", '"_dd')
-- G.keymap.set("n", "D", '"_D')
-- G.keymap.set("v", "ciw", '"_ciw')
-- G.keymap.set("v", "x", '"_x')
-- G.keymap.set("v", "d", '"_dd')
-- G.keymap.set("v", "D", '"_D')
-- G.keymap.set("v", "c", '"_c')

-- window management
G.keymap.set("n", "<Tab>", "<CMD>bn<CR>")
G.keymap.set("n", "<S-Tab>", "<CMD>bp<CR>")
G.keymap.set("n", "<C-h>", "<C-w>h")
G.keymap.set("n", "<C-j>", "<C-w>j")
G.keymap.set("n", "<C-k>", "<C-w>k")
G.keymap.set("n", "<C-l>", "<C-w>l")
G.keymap.set("n", "<leader>sv", "<C-w>v")
G.keymap.set("n", "<leader>sh", "<C-w>s")
G.keymap.set("n", "<leader>se", "<C-w>=")
G.keymap.set("n", "<leader>sx", "<CMD>close<CR>")
G.keymap.set("n", "<leader>to", "<CMD>tabnew<CR>")
G.keymap.set("n", "<leader>tx", "<CMD>tabclose<CR>")
G.keymap.set("n", "<leader>tn", "<CMD>tabn<CR>")
G.keymap.set("n", "<leader>tp", "<CMD>tabp<CR>")

-- block options
G.keymap.set("x", "<C-j>", ":m '>+1<CR>gv-gv")
G.keymap.set("x", "<C-k>", ":m '<-2<CR>gv-gv")
G.keymap.set("x", "<", "<-2<CR>gv-gv")
G.keymap.set("x", ">", ">+1<CR>gv-gv")

-- resize
G.keymap.set("n", "<leader>rp", "<CMD>resize -2<CR>")
G.keymap.set("n", "<leader>rm", "<CMD>resize +2<CR>")
G.keymap.set("n", "<leader>vm", "<CMD>vertical resize -2<CR>")
G.keymap.set("n", "<leader>vp", "<CMD>vertical resize +2<CR>")
