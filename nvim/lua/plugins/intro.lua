return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'doom',
      config = {
        header = {
          '',
          '',
          '   ██████╗███████╗ ██████╗ ██████╗ ███████╗',
          '  ██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔════╝',
          '  ██║     ███████╗██║   ██║██║  ██║█████╗  ',
          '  ██║     ╚════██║██║   ██║██║  ██║██╔══╝  ',
          '  ╚██████╗███████║╚██████╔╝██████╔╝███████╗',
          '   ╚═════╝╚══════╝ ╚═════╝ ╚═════╝ ╚══════╝',
          '',
          '',
        },
        center = {
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Find File',
            desc_hl = 'String',
            key = 'f',
            key_hl = 'Number',
            action = 'Telescope find_files'
          },
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Recent Files',
            desc_hl = 'String',
            key = 'r',
            key_hl = 'Number',
            action = 'Telescope oldfiles'
          },
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'New File',
            desc_hl = 'String',
            key = 'n',
            key_hl = 'Number',
            action = 'enew'
          },
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Find Word',
            desc_hl = 'String',
            key = 'g',
            key_hl = 'Number',
            action = 'Telescope live_grep'
          },
          {
            icon = '󰄉 ',
            icon_hl = 'Title',
            desc = 'Command History',
            desc_hl = 'String',
            key = 'h',
            key_hl = 'Number',
            action = 'Telescope command_history'
          },
        },
        footer = {}  -- Empty footer for a minimalist look
      }
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
