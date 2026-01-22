{
  plugins = {
    cmp = {
      enable = true;
      autoEnableSources = true;

      settings = {
        mapping = {
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-e>" = "cmp.mapping.close()";
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})";
          "<CR>" = "cmp.mapping.confirm({ select = false, behavior = cmp.ConfirmBehavior.Replace })";
        };

        preselect = "cmp.PreselectMode.None";

        snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";

        sources = [
          {
            name = "nvim_lsp";
            priority = 1000;
          }
          {
            name = "nvim_lsp_signature_help";
            priority = 1000;
          }
          {
            name = "nvim_lsp_document_symbol";
            priority = 1000;
          }
          {
            name = "treesitter";
            priority = 850;
          }
          {
            name = "luasnip";
            priority = 750;
          }
          {
            name = "buffer";
            priority = 500;
          }
          {
            name = "path";
            priority = 300;
          }
          {
            name = "cmdline";
            priority = 300;
          }
          {
            name = "calc";
            priority = 150;
          }
          {
            name = "emoji";
            priority = 100;
          }
        ];
      };
    };

    friendly-snippets.enable = true;
    luasnip.enable = true;

    lspkind = {
      enable = true;

      cmp = {
        enable = true;
      };
    };
  };
}
