vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

vim.cmd('hi NvimTreeFolderIcon guifg=#a6a4a4')
vim.cmd('hi NvimTreeFolderName guifg=#a6a4a4')
vim.cmd('hi NvimTreeIndentMarker guifg=#2e2e2e')
vim.cmd('hi NvimTreeEmptyFolderName guifg=#2e2e2e')
vim.cmd('hi NvimTreeOpenedFolderName guifg=#ffff00')
vim.cmd('hi NvimTreeRootFolder guifg=#807d7d gui=bold')
vim.cmd('hi NvimTreeSymlink guifg=#61afef')
vim.cmd('hi NvimTreeExecFile guifg=#98c379')
vim.cmd('hi NvimTreeSpecialFile guifg=#ff0000 gui=underline')
vim.cmd('hi NvimTreeImageFile guifg=#c0c0c0')
vim.cmd('hi NvimTreeNormal guibg=#000000 guifg=#ffffff')
vim.cmd('hi NvimTreeCursorLine guibg=#3c3c3c')
vim.cmd('hi NvimTreeVertSplit guibg=#000000 guifg=#000000')
vim.cmd('hi NvimTreeEndOfBuffer guifg=#474545')


vim.keymap.set('n', '<c-n>', ':NvimTreeFocus<CR>')
