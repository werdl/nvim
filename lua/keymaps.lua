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
vim.keymap.set('n', '<leader>th', function() 
    vim.lsp.inlay_hint.enable()
end, opts)


vim.keymap.set('n', '<C-d>', ':bd!<CR>', opts)
vim.keymap.set('n', '<C-Enter>', ':enew<CR>', opts)
vim.keymap.set('n', '<C-[>', ':split<CR>', opts)
vim.keymap.set('n', '<C-]>', ':vsplit<CR>', opts)
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>i<Right>', opts)
vim.keymap.set('n', '<C-x>', '<C-w>q', opts)
vim.keymap.set('n', '<leader>f', function()
    vim.lsp.buf.format()
end, opts)
vim.keymap.set('n', '<leader>d', function()
    vim.diagnostic.open_float()
end, opts)
vim.keymap.set('n', '<leader>bn', function()
    vim.cmd('bnext')
end, opts)
vim.keymap.set('n', '<leader>bp', function()
    vim.cmd('bprevious')
end, opts)
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic' })

-- terminal resizing
vim.keymap.set('t', '<C-Up>', '<C-\\><C-n>:FloatermUpdate --width=0.9 --height=0.9<CR>', opts)
vim.keymap.set('t', '<C-Down>', '<C-\\><C-n>:FloatermUpdate --width=0.5 --height=0.5<CR>', opts)

-- close floaterm with <C-x>
vim.keymap.set('t', '<C-x>', '<C-\\><C-n>:FloatermKill<CR>', opts)
vim.keymap.set('t', '<C-/>', '<C-\\><C-n>:FloatermToggle<CR>', opts)
vim.keymap.set('n', '<C-/>', ':FloatermToggle<CR>', opts)
vim.keymap.set('n', '<leader>nt', ':FloatermNew<CR>', opts)
vim.keymap.set('n', 'K', function()
    if vim.bo.filetype == 'help' then
        return '<C-]>'
    else
        return vim.lsp.buf.hover()
    end
end, { expr = true, desc = 'Hover documentation' })
vim.keymap.set('n', '<leader>r', function()
    vim.lsp.buf.rename()
end, opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { silent = true })
vim.keymap.set('n', '<leader>ff', function()
    require('telescope.builtin').find_files()
end, opts)
vim.keymap.set('n', '<leader>fg', function()
    require('telescope.builtin').live_grep()
end, opts)
vim.keymap.set('n', '<leader>fb', function()
    require('telescope.builtin').buffers()
end, opts)
vim.keymap.set('n', '<leader>fh', function()
    require('telescope.builtin').help_tags()
end, opts)
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
