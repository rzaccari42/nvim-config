local builtin = require('telescope.builtin')
local telescope = require('telescope')

telescope.setup{
	defaults = {
		layout_strategy = 'vertical',
		layout_config = {
			horizontal = {
				preview_cutoff = 0,
				preview_width = 0.6, 
			},
		},
	},
	pickers = {
    -- Configuration spécifique pour le picker 'man_pages'
    man_pages = {
		sections = { "1", "2", "3", "4", "5", "6", "7", "8" },
    }
  }
}
vim.keymap.set('n', '<Space><Space>', builtin.find_files, {})
vim.keymap.set('n', '<Space>of', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>fb', builtin.buffers, {})
vim.keymap.set('n', '<Space>re', builtin.registers, {})
vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>ft', builtin.tags, {})
vim.keymap.set('n', '<Space>ts', builtin.treesitter, {})
--vim.keymap.set('n', '<Space>li', builtin.lsp_implementation, {})
--vim.keymap.set('n', '<Space>ld', builtin.lsp_definition, {})
vim.keymap.set('n', '<Space>fm', builtin.man_pages, {})
vim.keymap.set('n', '<Space>ss', builtin.spell_suggest, {})
--vim.keymap.set('n', '<Space>cs', builtin.coloscheme, {})
vim.keymap.set('n', '<Space>gs', builtin.git_status, {})
vim.keymap.set('n', '<Space>gc', builtin.git_commits, {})
vim.keymap.set('n', '<Space>gb', builtin.git_branches, {})

