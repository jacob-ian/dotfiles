lua << EOF
    -- Create lspconfig
    local lspconfig = require('lspconfig')
  
    -- Client capabilities with cmp_nvim_lsp
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

    -- Setup language server
    lspconfig['gopls'].setup({
        cmd = { "gopls", "serve" },
        filetypes = { "go", "gomod" },
        root_dir = require('lspconfig/util').root_pattern("go.work", "go.mod", ".git"),
        capabilities = capabilities, 
    })
EOF

" Sort Go Imports on save
lua <<EOF
  function goimports(wait_ms)
    local params = vim.lsp.util.make_range_params()
    params.context = {only = {"source.organizeImports"}}
    local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
    for _, res in pairs(result or {}) do
      for _, r in pairs(res.result or {}) do
        if r.edit then
          vim.lsp.util.apply_workspace_edit(r.edit, "UTF-8")
        else
          vim.lsp.buf.execute_command(r.command)
        end
      end
    end
  end
EOF
autocmd BufWritePre *.go lua goimports(1000)
