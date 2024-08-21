require'lspconfig'.clangd.setup{
  cmd = { "clangd", "--compile-commands-dir=./" },
  root_dir = require'lspconfig'.util.root_pattern("compile_commands.json", "Makefile", ".git"),
  on_attach = function(client, bufnr)
    -- Configurations spécifiques comme les keymaps
    local opts = { noremap=true, silent=true }
    vim.api.nvim_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.api.nvim_set_keymap('n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    vim.api.nvim_set_keymap('n', '<C-k>', '<Cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    vim.api.nvim_set_keymap('n', 'gr', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
    vim.api.nvim_set_keymap('n', '<space>ca', '<Cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  end,
  flags = {
    debounce_text_changes = 150,
  }
}
