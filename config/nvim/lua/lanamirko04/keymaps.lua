local opts = { noremap = true, silent = true }

-- Shorten function name
local map = vim.api.nvim_set_keymap

--Remap space as leader key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- NORMAL --
-- Quick exit from insert mode
map("i", "jk", "<esc>", opts)
map("i", "JK", "<esc>", opts)
--  Navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)
-- Resizing (no MacBook)
map("n", "<C-Up>", ":resize +2<CR>", opts)
map("n", "<C-Down>", ":resize -2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)
-- Split window
map("n", "<leader>wh", "<C-w>s", opts)
map("n", "<leader>wv", "<C-w>v", opts)
-- Open file editor
vim.keymap.set("n", "<leader>fe", "<CMD>Oil<CR>", opts)
-- Reload current file
map("n", "<leader>r", ":e<CR>", opts)
-- Open terminal horizontally
map("n", "<leader>th", "<C-w>s<C-w>j14<C-w>_:terminal<CR>i", opts)

-- Brabar --
-- Move to previous/next
map("n", "<A-,>", ":BufferPrevious<CR>", opts)
map("n", "<A-.>", ":BufferNext<CR>", opts)
-- Goto buffer in position...
map("n", "<A-1>", ":BufferGoto 1<CR>", opts)
map("n", "<A-2>", ":BufferGoto 2<CR>", opts)
map("n", "<A-3>", ":BufferGoto 3<CR>", opts)
map("n", "<A-4>", ":BufferGoto 4<CR>", opts)
map("n", "<A-5>", ":BufferGoto 5<CR>", opts)
map("n", "<A-6>", ":BufferGoto 6<CR>", opts)
map("n", "<A-7>", ":BufferGoto 7<CR>", opts)
map("n", "<A-8>", ":BufferGoto 8<CR>", opts)
map("n", "<A-9>", ":BufferGoto 9<CR>", opts)
map("n", "<A-0>", ":BufferLast<CR>", opts)
-- Pin/unpin buffer
map("n", "<A-p>", ":BufferPin<CR>", opts)
-- Close buffer
map("n", "<A-c>", ":BufferClose<CR>", opts)

-- Telescope --
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
map("n", "<leader>fz", ":Telescope current_buffer_fuzzy_find<CR>", opts)


-- VISUAL --
-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Move text up and down
map("v", "<A-j>", ":m .+1<CR>==", opts)
map("v", "<A-k>", ":m .-2<CR>==", opts)


-- TERMINAL --
-- Escape from terminal mode
map("t", "<esc>", "<C-\\><C-n>", opts)
