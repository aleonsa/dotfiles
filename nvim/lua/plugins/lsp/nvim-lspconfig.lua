return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    -- Key bindings
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

    -- Lua config (lua_ls)
    lspconfig.lua_ls.setup({})

    -- C/C++ config (clangd)
    lspconfig.clangd.setup({
      cmd = { "clangd" },
      filetypes = { "c", "cpp", "objc", "objcpp" }
    })

    -- Javascript (enslint)
    lspconfig.eslint.setup({
      settings = {
        format = true
      }
    })

    -- Python config (pylsp)
    lspconfig.pylsp.setup({
      settings = {
        pylsp = {
          plugins = {
            pycodestyle = { enabled = true },
            pylint = { enabled = true },
            pyflakes = { enabled = true },
            autopep8 = { enabled = true }
          }
        }
      }
    })
  end
}
