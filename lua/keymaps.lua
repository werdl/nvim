local opts = {
    noremap = true,
    silent = true,
}
vim.g.mapleader = ' '
---normal mode
--better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

vim.keymap.set('n', '<C-d>', ':bd!<CR>', opts)
vim.keymap.set('n', '<C-Enter>', ':enew<CR>', opts)
vim.keymap.set('n', '<C-[>', ':split<CR>', opts)
vim.keymap.set('n', '<C-]>', ':vsplit<CR>', opts)
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>i', opts)
vim.keymap.set('n', '<C-+>', '<C-w>q', opts)
vim.keymap.set('n', '<leader>f', function() 
    vim.lsp.buf.format()
end, opts)
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic' })

-- toggle nvimtree
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
--arrows for resizing
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

---visual mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
