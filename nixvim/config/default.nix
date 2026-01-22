{
  # Import all your configuration modules here
  imports = [ 
    ./bufferline.nix
    ./telescope.nix
  ];

  colorschemes.gruvbox.enable = true;

  clipboard = {
    providers.wl-copy.enable = true;
  };

  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  plugins = {
    lualine.enable = true;

    which-key = {
      enable = true;
      autoLoad = true;
    };

    lsp = {
      enable = true;
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
    dap = {
      enable = true;
      autoLoad = true;
    };
  };
}
