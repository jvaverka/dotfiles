-- LSP
-- ========================
require'lspconfig'.clangd.setup{}
require'lspconfig'.julials.setup{}
require'lspconfig'.texlab.setup{}
require'lspconfig'.sumneko_lua.setup{}
require'lspconfig'.powershell_es.setup{
  bundle_path = 'C:\\Users\\jakev\\AppData\\Local\\nvim-data\\lsp_servers\\powershell_es',
}
require'lspconfig'.zeta_note.setup{
  cmd = {'C:\\Users\\jakev\\AppData\\Local\\nvim-data\\lsp_servers\\zeta_note\\zeta-note.exe'},
}
