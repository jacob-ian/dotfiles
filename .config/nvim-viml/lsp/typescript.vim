lua << EOF
  -- Formatting with null-ls
  require('null-ls').setup({
    sources = {
        require('null-ls').builtins.formatting.prettierd,
        require('null-ls').builtins.code_actions.eslint_d,
    },
  })

  -- Create lspconfig
  local lspconfig = require('lspconfig')

  -- Client capabilities with cmp_nvim_lsp
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

  -- Setup language server
  lspconfig['tsserver'].setup({
    capabilities = capabilities, 
    on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
    end,
  })
EOF
