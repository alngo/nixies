{
	plugins = {

		cmp = {
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
			};
		};

		lsp = {
			keymaps = {
				lspBuf = {
					"gd" = "definition";
					"gD" = "declaration";
					"gi" = "implementation";
					"gr" = "references";
					"K" = "hover";
				};

				extra = [
				{
					key = "<leader>ih";
					action = ''vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())'';
				}
				];
			};
		};

		telescope = {
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
		};
	};
}
