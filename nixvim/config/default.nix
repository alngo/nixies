{ pkgs, ... }:
{
  config = {
    globals = {
      mapleader = " ";
    };

    opts = {
      number = true;
      relativenumber = true;
      colorcolumn = "80";
      shiftwidth = 2;
      tabstop = 2;
      hlsearch = true;
      incsearch = true;
    };

    extraPackages = with pkgs; [
      fd
      fzf
      ripgrep
    ];

    clipboard = {
      register = "unnamedplus";
    };
  };


  # Import all your configuration modules here
  imports = [
    ./plugins/lualine.nix
    ./plugins/lsp.nix
    ./plugins/cmp.nix
    ./plugins/telescope.nix
    ./plugins/codecompanion.nix
  ];
}
