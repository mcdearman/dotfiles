-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<leader>ww", "<C-w>w", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<leader>bn", ":bnext<CR>", opts)
keymap("n", "<leader>bp", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "q", "<cmd>Bdelete!<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Insert --
-- Press jj fast to enter
keymap("i", "jj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Plugins --
keymap("n", "<leader>a", ":Alpha<CR>", opts)

-- NeoTree
keymap("n", "<leader>f", ":Neotree<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fr", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')

-- Code Actions
keymap("n", "<leader>.", ":CodeActionMenu<CR>", opts)

-- LSP
keymap("n", "<leader>jd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "<leader>jD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
keymap("n", "<leader>ji", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
keymap("n", "<leader>jr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
keymap("n", "<leader>jR", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
keymap("n", "<leader>jh", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)

-- Custom
keymap("n", "<Leader>t", "<cmd> tabnew<CR>", opts)
keymap("n", "<Leader>c", "<cmd> tabclose<CR>", opts)
