require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = {
      normal = {
        a = { fg = '#000000', bg = '#A8A8A8', gui = 'bold' },
        b = { fg = '#A8A8A8', bg = '#000000' },
        c = { fg = '#A8A8A8', bg = '#000000' },
      },
      insert = { 
		  a = { fg = '#000000', bg = '#ffff00', gui = 'bold' }, 
		  b = { fg = '#A8A8A8', bg = '#000000' },
		  c = { fg = '#A8A8A8', bg = '#000000' },
	  },
      visual = { 
		  a = { fg = '#000000', bg = '#FFAA00', gui = 'bold' },
		  b = { fg = '#A8A8A8', bg = '#000000' },
		  c = { fg = '#A8A8A8', bg = '#000000' },
	  },
      replace = { a = { fg = '#000000' , bg = '#FF0000', gui = 'bold' } },
      command = { 
		  a = { fg = '#000000', bg = '#FFFFFF', gui = 'bold' },
		  b = { fg = '#A8A8A8', bg = '#000000' },
		  c = { fg = '#A8A8A8', bg = '#000000' },
	  },
      inactive = {
        a = { fg = '#FFFFFF', bg = '#595959' },
        b = { fg = '#FFFFFF', bg = '#595959' },
        c = { fg = '#FFFFFF', bg = '#000000' },
      },
    },
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
	lualine_z = {'location'},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
