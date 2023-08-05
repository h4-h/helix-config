local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

local cmp = require('cmp')
local cmp_select_opts = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
    ['<S-tab>'] = cmp.mapping(function ()
      if cmp.visible() then
        cmp.select_next_item(cmp_select_opts)
        cmp.confirm()
      end
    end)
  }
})
