local opt = { noremap = true, silent = true }
local builtin = require("telescope.builtin")
local actions = require("telescope.actions")

require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        -- Move cursor up
        ["<C-k>"] = actions.move_selection_previous,

        -- Move cursor down
        ["<C-j>"] = actions.move_selection_next,

        -- Freeze and refine search (toggle preview or suspend prompt)
        ["<C-Space>"] = actions.toggle_selection + actions.move_selection_next,
      },
      n = {
        -- Same bindings in normal mode if desired
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-Space>"] = actions.toggle_selection + actions.move_selection_next,
      },
    },
  },
})

vim.api.nvim_set_keymap("n", "<leader><leader>", ":lua require('telescope.builtin').resume()<CR>", opt)
vim.api.nvim_set_keymap("n", "<leader>ff", ":lua require('telescope.builtin').find_files()<CR>", opt)
vim.api.nvim_set_keymap("n", "<leader>sw", ":lua require('telescope.builtin').live_grep()<CR>", opt)
vim.api.nvim_set_keymap("n", "<leader>sf", ":lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", opt)
vim.api.nvim_set_keymap("n", "<leader>ss", ":lua require('telescope.builtin').live_grep({ glob_pattern = '!**/test/**' })<CR>", opt)
vim.api.nvim_set_keymap("n", "<leader>scw", ":lua require('telescope.builtin').grep_string()<CR>", opt)
vim.api.nvim_set_keymap("n", "<leader>scW", ":lua require('telescope.builtin').grep_string({ word_match = 'strict' })<CR>", opt)
vim.api.nvim_set_keymap("n", "<C-p>", ":lua require('telescope.builtin').git_files()<CR>", opt)
vim.api.nvim_set_keymap("n", "<leader>gb", ":lua require('telescope.builtin').git_branches()<CR>", opt)
vim.api.nvim_set_keymap("n", "<leader>gc", ":lua require('telescope.builtin').git_commits()<CR>", opt)
vim.api.nvim_set_keymap("n", "<leader>gs", ":lua require('telescope.builtin').git_status()<CR>", opt)
vim.api.nvim_set_keymap("n", "<leader>gh", ":lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", opt)



