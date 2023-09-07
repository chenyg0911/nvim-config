return {
  -- Config toggleterm

  'akinsho/toggleterm.nvim',
  version = '*', -- Terminal
  cmd = { 'ToggleTerm' },
  config = function()
    require('toggleterm').setup({
      size = function(term)
        if term.direction == 'horizontal' then
          return 15
        elseif term.direction == 'vertical' then
          return vim.o.columns * 0.4
        end
      end
    })
    -- set keymaps to easily move between buffers and terminal
    function _G.set_terminal_keymaps()
      local opts = { buffer = 0 }
      vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', 'jk', [[<C-\><C-n><Cmd>ToggleTerm<CR>]], opts)
    end

    vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
  end

}

