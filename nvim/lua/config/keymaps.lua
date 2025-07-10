local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Clear highlights on search
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Keep highlight when indenting block
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- Move line/block up/down
map('n', '<A-k>', ':m .-2<CR>==', opts)     -- Move current line up
map('n', '<A-j>', ':m .+1<CR>==', opts)     -- Move current line down
map('v', '<A-k>', ":m '<-2<CR>gv=gv", opts) -- Move visual selection up
map('v', '<A-j>', ":m '>+1<CR>gv=gv", opts) -- Move visual selection down

-- Switch between windows/splits
map('n', '<C-h>', '<C-w>h', opts) -- Focus left window
map('n', '<C-j>', '<C-w>j', opts) -- Focus lower window
map('n', '<C-k>', '<C-w>k', opts) -- Focus upper window
map('n', '<C-l>', '<C-w>l', opts) -- Focus right window

-- Resize windows/splits
map('n', '<C-Up>', ':resize -2<CR>', opts)
map('n', '<C-Down>', ':resize +2<CR>', opts)
map('n', '<C-Left>', ':vertical resize -2<CR>', opts)
map('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Copy/Paste
map('n', '<leader>aa', 'gg<S-v>G')  -- Select all
map('n', '<leader>ay', ':%y<CR>')   -- Copy all
map('n', '<leader>ap', 'gg<S-v>Gp') -- Replace all

-- Exit terminal mode in the builtin terminal
map('t', '<Esc><Esc>', '<C-\\><C-n>')
