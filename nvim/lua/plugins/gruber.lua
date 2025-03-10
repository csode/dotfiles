return {
  {
    'blazkowolf/gruber-darker.nvim',
    config = function()
        vim.cmd("colorscheme gruber-darker")
        vim.cmd [[highlight CursorLine guibg=NONE]]
        vim.o.cursorline = true
    end
  }
}

