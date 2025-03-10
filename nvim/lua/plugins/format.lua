return {
  'lukas-reineke/lsp-format.nvim',

  config = function()
    -- Load the plugin
    require('lsp-format').setup {}

    -- Auto-format when exiting Neovim
    vim.api.nvim_create_autocmd('VimLeave', {
      group = vim.api.nvim_create_augroup('LspAutoFormatOnExit', { clear = true }),
      pattern = '*', -- This applies to all filetypes
      callback = function()
        -- Ensure LSP is attached before formatting
        if vim.lsp.buf_get_clients() ~= {} then
          vim.lsp.buf.format({ async = true })
        else
          print("No active LSP client, skipping format on exit!")
        end
      end,
    })
  end
}

