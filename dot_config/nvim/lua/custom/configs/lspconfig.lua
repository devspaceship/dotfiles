local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {
  "clangd",
  "cssls",
  "docker_compose_language_service",
  "dockerls",
  "html",
  "lua_ls",
  "marksman",
  "prismals",
  "pyright",
  "ruff_lsp",
  "rust_analyzer",
  "tailwindcss",
  "tsserver",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

--
-- lspconfig.pyright.setup { blabla}
