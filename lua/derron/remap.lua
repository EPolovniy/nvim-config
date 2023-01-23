local keymap = vim.keymap.set
local silent = { silent = true }

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
-- vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', silent)

-- Remap for dealing with word wrap
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Better window movement
keymap("n", "<Leader>h", "<C-w>h", silent)
keymap("n", "<Leader>j", "<C-w>j", silent)
keymap("n", "<Leader>k", "<C-w>k", silent)
keymap("n", "<Leader>l", "<C-w>l", silent)

-- Split
keymap("n", "<Leader>v", ":split<CR>", silent)
keymap("n", "<Leader>V", ":vsplit<CR>", silent)

-- Save file
keymap("n", "<Leader>w", ":w<CR>", silent)

-- Close buffer
keymap("n", "<Leader>q", ":BufferClose<CR>", silent)

-- Run Netrw
keymap("n", "<leader>e", vim.cmd.Ex, silent)

-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", silent)
keymap("x", "J", ":move '>+1<CR>gv-gv", silent)

-- Don't yank on visual paste
keymap("v", "p", '"_dP', silent)

-- Copy to clipboard
keymap("v", "y", '"+y', silent)

-- Chanhe and delete text
keymap("n", "c", '"_c', { noremap = true, silent = true })
keymap("v", "c", '"_c', { noremap = true, silent = true })
keymap("n", "d", '"_d', { noremap = true, silent = true })
keymap("v", "d", '"_d', { noremap = true, silent = true })

-- Remove highlights
keymap("n", "<CR>", ":noh<CR><CR>", silent)

-- LazyGit
keymap("n", "<leader>g", ":LazyGit<CR>", silent)

-- update init.lua
keymap("n", "<leader><CR>", ":so $MYVIMRC<CR>", silent)

-- See `:help telescope.builtin`
keymap('n', '<leader>/', require('telescope.builtin').oldfiles, { desc = '[/] Find recently opened files' })
keymap('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
keymap('n', '<leader>?', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[?] Fuzzily search in current buffer]' })

keymap('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
keymap('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
keymap('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
keymap('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
keymap('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })

-- Diagnostic keymaps
keymap('n', '[d', vim.diagnostic.goto_prev)
keymap('n', ']d', vim.diagnostic.goto_next)
keymap('n', '<leader>t', vim.diagnostic.open_float)
keymap('n', '<leader>r', vim.diagnostic.setloclist)
