{ ... }:
{
  plugins = {
    lsp-lines.enable = true;
    lsp-format.enable = true;
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        superhtml.enable = true;
        lua_ls.enable = true;
        ts_ls.enable = true;
        marksman.enable = true;
        pyright.enable = true;
        nixd.enable = true;
      };
    };
    rustaceanvim.enable = true;
  };

# -- "grn" is mapped in Normal mode to |vim.lsp.buf.rename()|
# -- "gra" is mapped in Normal and Visual mode to |vim.lsp.buf.code_action()|
# -- "grr" is mapped in Normal mode to |vim.lsp.buf.references()|
# -- "gri" is mapped in Normal mode to |vim.lsp.buf.implementation()|
# -- "grt" is mapped in Normal mode to |vim.lsp.buf.type_definition()|
# -- "gO" is mapped in Normal mode to |vim.lsp.buf.document_symbol()|
# -- CTRL-S is mapped in Insert mode to |vim.lsp.buf.signature_help()|
# --  <leader>e to show

}
