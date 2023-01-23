local prettier = require("prettier")

prettier.setup({
  filetypes = {
    "css",
    "graphql",
    "json",
    "scss",
    "typescript",
    "typescriptreact",
  },
})
