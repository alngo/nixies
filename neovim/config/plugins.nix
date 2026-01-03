{ pkgs }:
with pkgs.vimPlugins; [
  telescope-nvim
  nvim-dap
  nvim-lspconfig
  mcphub
  plenary
]
