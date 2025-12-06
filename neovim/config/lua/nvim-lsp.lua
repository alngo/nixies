local on_attach = function(client, bufnr)
  vim.lsp.completion.enable(true, client.id, bufnr, {
      autotrigger = true,
      convert = function(item)
        return { abbr = item.label:gsub('%b()', '') }
      end,
    })

  local opts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>q", ":lua vim.diagnostic.setqflist()<CR>", opts)
  vim.keymap.set("n", "<leader>i", ":lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<CR>", opts)
  vim.keymap.set("n", "<leader>vs", ":lua require('telescope.builtin').lsp_document_symbols()<CR>", opts)
  vim.keymap.set("n", "<leader>vd", ":lua require('telescope.builtin').diagnostics()<CR>", opts)
end

-- "grn" is mapped in Normal mode to |vim.lsp.buf.rename()|
-- "gra" is mapped in Normal and Visual mode to |vim.lsp.buf.code_action()|
-- "grr" is mapped in Normal mode to |vim.lsp.buf.references()|
-- "gri" is mapped in Normal mode to |vim.lsp.buf.implementation()|
-- "grt" is mapped in Normal mode to |vim.lsp.buf.type_definition()|
-- "gO" is mapped in Normal mode to |vim.lsp.buf.document_symbol()|
-- CTRL-S is mapped in Insert mode to |vim.lsp.buf.signature_help()|
--  <space>e to show

-- Enable Rust LSP
vim.lsp.config('rust_analyzer', {
  on_attach = on_attach,
  settings = {
    ["rust-analyzer"] = {
      cargo = { allFeatures = true },
      checkOnSave = { command = "clippy" },
    },
  },
})

vim.lsp.enable('rust_analyzer')

-- Enable Lua LSP
vim.lsp.config('lua_ls', {
  on_attach = on_attach,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT', -- Neovim uses LuaJIT
      },
      diagnostics = {
        globals = { 'vim' }, -- recognize the `vim` global
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true), -- make server aware of Neovim runtime files
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
})

vim.lsp.enable('lua_ls')

-- Configure diagnostics globally
vim.diagnostic.config({
  virtual_text = true,   -- Show diagnostics inline as virtual text
  signs = true,          -- Show signs in the sign column
  underline = true,      -- Underline problematic code
  update_in_insert = false, -- Don't update diagnostics while typing
  severity_sort = true,  -- Sort diagnostics by severity
})

-- Custom diagnostic signs
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- Works best with completeopt=noselect.
-- Use CTRL-Y to select an item. |complete_CTRL-Y|
vim.cmd[[set completeopt+=menuone,noselect,popup]]
