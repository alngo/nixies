{ lib, pkgs, ... }:
{
  clipboard = {
    register = "unnamedplus";
  };

  colorschemes.catppuccin.enable = true;

  luaLoader.enable = true;

  match.ExtraWhitespace = "\\s\\+$";

  globals = {
    mapleader = " ";
    maplocalleader = " ";

    disable_diagnostics = false;
    disable_autoformat = false;
    spell_enabled = true;
    colorizing_enabled = 1;
    first_buffer_opened = false;
  };

  opts = {
    updatetime = 100;

    relativenumber = true;
    number = true;
    hidden = true;
    mouse = "a";
    mousemodel = "extend";

    incsearch = true;
    ignorecase = true;
    smartcase = true;
    cursorline = true;
    cursorcolumn = true;
    fileencoding = "utf-8";
    termguicolors = true;
    spelllang = lib.mkDefault [ "en_us" ];
    spell = true;
    wrap = false;

    tabstop = 2;
    shiftwidth = 2;
    softtabstop = 0;
    expandtab = true;
    autoindent = true;

    showmatch = true;
    startofline = true;
  };
}
