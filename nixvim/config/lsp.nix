{
  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;

      keymaps = {
        lspBuf = {
          "gd" = "definition";
          "gD" = "declaration";
          "gi" = "implementation";
          "K" = "hover";
          "<leader>ca" = "code_action";
        };

        extra = [
        {
          key = "<leader>ih";
          action = ''vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())'';
        }
        ];
      };

      servers = {
        lua_ls.enable = true;
        nixd.enable = true;
        rust_analyzer = {
          enable = true;
          installCargo = true;
          installRustc = true;
        };
      };
    };
  };
}
