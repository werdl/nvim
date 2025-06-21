require('mason').setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

--require('mason-lspconfig').setup({
    -- A list of servers to automatically install if they're not already installed
  --  ensure_installed = { 'pylsp', 'lua_ls', 'rust_analyzer' },
--})

vim.o.updatetime = 250  -- Update diagnostics every 250 ms
vim.diagnostic.config({
  virtual_text = {
    prefix = '●',  -- You can change the character for virtual text
  },
  signs = true,  -- Show signs (symbols) in the gutter
  float = {
    source = "always",  -- Show source of error in floating window
  },
})
vim.lsp.inlay_hint.enable()
require("go").setup()
require("lspconfig").gopls.setup{}
