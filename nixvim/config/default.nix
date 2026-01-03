{
  # Import all your configuration modules here
  imports = [ ./bufferline.nix ];

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
    telescope = {
      enable = true;
      autoLoad = true;
      keymaps = {
        "<leader><leader>" = {
	  action = "resume";
	  options = {
	    desc = "Resume search";
	  };
	};
        "<leader>ff" = {
	  action = "find_files";
	  options = {
	    desc = "Lists files in your current working directory.";
	  };
	};
        "<leader>fb" = {
	  action = "buffers";
	  options = {
	    desc = "Lists open buffers in current neovim instance.";
	  };
	};
        "<leader>sw" = {
	  action = "live_grep";
	  options = {
	    desc = "Search for a string in your current working directory and get results live as you type.";
	  };
	};
        "<leader>sf" = {
	  action = "current_buffer_fuzzy_find";
	  options = {
	    desc = "Live fuzzy search inside of the currently open buffer.";
	  };
	};
        "<leader>scw" = {
	  action = "grep_string";
	  options = {
	    desc = "Searches for the string under your cursor or selection in your current working directory.";
	  };
	};
        "<C-p>" = {
	  action = "git_files";
	  options = {
	    desc = "Fuzzy search through the output of git ls-files command.";
	  };
	};
        "<leader>gb" = {
	  action = "git_branches";
	  options = {
	    desc = "Lists all branches with log preview, checkout action <cr>, track action <C-t>, rebase action<C-r>, create action <C-a>, switch action <C-s>, delete action <C-d> and merge action <C-y>.";
	  };
	};
        "<leader>gc" = {
	  action = "git_commits";
	  options = {
	    desc = "Lists git commits with diff preview, checkout action <cr>, reset mixed <C-r>m, reset soft <C-r>s and reset hard <C-r>h.";
	  };
	};
        "<leader>gs" = {
	  action = "git_status";
	  options = {
	    desc = "Lists current changes per file with diff preview and add action.";
	  };
	};
        "<leader>gh" = {
	  action = "git_stash";
	  options = {
	    desc = "Lists stash items in current repository with ability to apply them on <cr>.";
	  };
	};
      };

      settings = {
        defaults = {
          file_ignore_patterns = [
            "^.git/"
            "^.mypy_cache/"
            "^__pycache__/"
            "^output/"
            "^data/"
            "%.ipynb"
          ];
          layout_config = {
            prompt_position = "top";
          };
          mappings = {
            i = {
              "<A-j>" = {
                __raw = "require('telescope.actions').move_selection_next";
              };
              "<A-k>" = {
                __raw = "require('telescope.actions').move_selection_previous";
              };
            };
          };
          selection_caret = "> ";
          set_env = {
            COLORTERM = "truecolor";
          };
          sorting_strategy = "ascending";
        };
      };
    };

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
