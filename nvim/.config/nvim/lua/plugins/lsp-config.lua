return {
  { "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      autoinstall = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.elixirls.setup({
        cmd = { "/users/franciscosoto/.local/share/nvim/mason/bin/elixir-ls" },
        capabilities = capabilities,
      })
--      require("lspconfig").nextls.setup {
--        cmd = { "/users/franciscosoto/.local/share/nvim/mason/bin/nextls" };
--      }

      vim.keymap.set('n', 'H', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  },
}
