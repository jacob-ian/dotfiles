set completeopt=menu,menuone,noselect

lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    end,
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' },
    }, {
        { name = 'buffer' },
    }),
  })

  -- Formatting with null-ls
  require('null-ls').setup({
    sources = {
        require('null-ls').builtins.formatting.prettier.with({
            prefer_local = "node_modules/.bin"
        }),
        require('null-ls').builtins.code_actions.eslint.with({
            prefer_local = "node_modules/.bin"
        }),
    },
  })

  -- TypeScript
  require('lspconfig')['tsserver'].setup({
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
    end,
  })
EOF
