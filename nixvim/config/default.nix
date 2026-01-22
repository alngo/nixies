{
  # Import all your configuration modules here
  imports = [
    ./option.nix
    ./telescope.nix
    ./lsp.nix
    ./cmp.nix
    ./bufferline.nix
    ./avante.nix
  ];

  globals = {
  };

  plugins = {
    lualine.enable = true;

    which-key = {
      enable = true;
      autoLoad = true;
    };

    sleuth = {
      enable = true;
      autoLoad = true;
    };
  };
}
