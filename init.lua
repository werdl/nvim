require('options')
require('plugins')
require('keymaps')
--require('colorscheme')
require('lsp')

require('bufferline')
require('feline').setup()
require('lsp_signature').on_attach({
  bind = true,  -- Bind to the current buffer
  hint_enable = true,  -- Enable hinting
  hint_prefix = "☾ ",  -- Use a symbol for hints (e.g., ☾ for types)
  hint_scheme = "Comment",  -- Make the hint appear in grey
  hi_parameter = "LspSignatureActiveParameter",  -- Highlight the active parameter
  max_height = 12,  -- Maximum number of lines for hint window
  max_width = 80,   -- Maximum width of the hint window
  handler_opts = {
    border = "rounded"  -- Use a rounded border for the hint
  }
})

vim.diagnostic.config({
  float = { border = 'rounded' },
})

vim.api.nvim_create_autocmd('CursorHold', {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})
function DiagnosticCounts()
  local e = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
  local w = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
  local h = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
  local i = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })
  return string.format("E:%d W:%d H:%d I:%d", e, w, h, i)
end
vim.lsp.inlay_hint.enable()

vim.cmd[[colorscheme tokyonight]]
