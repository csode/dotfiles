return {
  'lukas-reineke/lsp-format.nvim',
  config = function()
    -- Load the plugin
    require('lsp-format').setup {}
    
    -- Create an autocommand for formatting when exiting Neovim
    vim.api.nvim_create_autocmd('VimLeavePre', {
      group = vim.api.nvim_create_augroup('LspFormatOnExit', { clear = true }),
      pattern = '*', -- This applies to all filetypes
      callback = function()
        -- Ensure LSP is attached before formatting
        if next(vim.lsp.buf_get_clients()) ~= nil then
          vim.lsp.buf.format({ async = false }) -- Use synchronous formatting when exiting
          vim.cmd('write') -- Save the file after formatting
        else
          print("No active LSP client, skipping format!")
        end
      end,
    })
  end
}
