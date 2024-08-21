require("bufferline").setup {
	options = {
		mode = 'buffers',
		diagnotics = "nvim-lsp",
		offsets = { 
			{
				filetype = "NvimTree",
				text = "File Explorer",
				separator = true,
			}
		}
	}
}
vim.keymap.set('n', '<Space><Tab>', ':BufferLinePick<CR>')
