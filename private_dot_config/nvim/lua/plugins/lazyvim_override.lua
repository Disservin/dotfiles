local Util = require("lazyvim.util")

return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "black" },
        yaml = { "yamlfmt" },
        c = { "uncrustify" },
        md = { "mdformat" },
      },
    },
  },
}
