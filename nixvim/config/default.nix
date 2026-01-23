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

		plugins = {
			web-devicons.enable = true;
			gitsigns = {
				enable = true;
				settings.signs = {
					add.text = "+";
					change.text = "~";
				};
			};
			nvim-autopairs.enable = true;
			colorizer = {
				enable = true;
				settings.user_default_options.names = false;
			};
			oil = {
				enable = true;
				lazyLoad.settings.cmd = "Oil";
			};
			trim = {
				enable = true;
				settings = {
					highlight = true;
					ft_blocklist = [
						"checkhealth"
						"floaterm"
						"lspinfo"
						"neo-tree"
						"TelescopePrompt"
					];
				};
			};
		};
	};



	# Import all your configuration modules here
	imports = [
		./plugins/lualine.nix
		./plugins/lsp.nix
		./plugins/cmp.nix
		./plugins/telescope.nix
		./plugins/codecompanion.nix
		./plugins/treesitter.nix
		./mapping.nix
	];

}
