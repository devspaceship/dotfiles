local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- Formatting
  -- b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  -- b.formatting.prettier.with { filetypes = { "html", "markdown", "css"} },
  b.formatting.black,
  b.formatting.clang_format,
  b.formatting.mdformat,
  b.formatting.nginx_beautifier,
  b.formatting.prettier,
  b.formatting.prismaFmt,
  b.formatting.stylua,
  b.formatting.rustfmt,
  b.formatting.ruff,
  b.formatting.yamlfmt,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
