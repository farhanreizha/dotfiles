local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

-- Normal
-- Standard Operations
map('n', '<leader>q', '<cmd>q!<CR>', opts)
map('n', '<leader>w', '<cmd>w<CR>', opts)
map('n', '<leader>h', '<cmd>nohlsearch<CR>', opts)
-- map('n', '<leader>fn', '<cmd>enew<CR>', opts)
map('n', '<C-s>', '<cmd>w!<CR>', opts)
map('n', '<C-q>', '<cmd>q!<CR>', opts)

-- Packer
map('n', '<leader>ps', '<cmd>PackerSync<CR>', opts)

-- Bufdelete
if 'bufdelete.nvim' then
  map('n', '<leader>c', '<cmd>Bdelete<CR>', opts)
else
  map('n', '<leader>c', '<cmd>bdelete<CR>', opts)
end

-- Navigate buffers
if 'bufferline.nvim' then
  map('n', '<S-l>', '<cmd>BufferLineCycleNext<CR>', opts)
  map('n', '<S-h>', '<cmd>BufferLineCyclePrev<CR>', opts)
  -- map('n', '<', '<cmd>BufferLineCyclePrev<CR>', opts)
else
  map('n', '<S-l>', '<cmd>bnext<CR>', opts)
  map('n', '<S-h>', '<cmd>bprevious<CR>', opts)
end

-- NvimTreeToggle
map('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', opts)
map('n', '<leader>o', '<cmd>NvimTreeOpen<CR>', opts)

-- Smart Splits
if 'smart-splits.nvim' then
  -- Better window navigation
  map('n', '<C-h>', ' function() require("smart-split").move_cursor_left() end ', opts)
  map('n', '<C-j>', ' function() require("smart-split").move_cursor_down() end ', opts)
  map('n', '<C-k>', ' function() require("smart-split").move_cursor_up() end ', opts)
  map('n', '<C-l>', ' function() require("smart-split").move_cursor_right() end ', opts)

  -- Resize with arrows
  map('n', '<C-Up>', ' function() require("smart-split").resize_up() end ', opts)
  map('n', '<C-Down>', ' function() require("smart-split").resize_down() end ', opts)
  map('n', '<C-Left>', ' function() require("smart-split").resize_left() end ', opts)
  map('n', '<C-Right>', ' function() require("smart-split").resize_right() end ', opts)
else
  map('n', '<C-h>', '<C-w>h', opts)
  map('n', '<C-j>', '<C-w>j', opts)
  map('n', '<C-k>', '<C-w>k', opts)
  map('n', '<C-l>', '<C-w>l', opts)
  map('n', '<C-Up>', '<cmd>resize -2<CR>', opts)
  map('n', '<C-Down>', '<cmd>resize +2<CR>', opts)
  map('n', '<C-Left>', '<cmd>vertical resize -2<CR>', opts)
  map('n', '<C-Right>', '<cmd>vertical resize +2<CR>', opts)
end

-- Move Select Line
map('n', '<A-j>', '<cmd>m .+1==<CR>', opts)
map('n', '<A-k>', '<cmd>m .-2==<CR>', opts)
-- Copy Select Line
map('n', '<C-j>', '<cmd>copy +0==<CR>', opts)
map('n', '<C-k>', '<cmd>copy -1==<CR>', opts)

-- Insert
map('i', 'jk', '<ESC>', opts)
