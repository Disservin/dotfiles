return {
  -- catppuccin ships with LazyVim; just make it the default
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "catppuccin" },
  },
  -- extra schemes, available via <leader>uC
  { "rebelot/kanagawa.nvim", lazy = true },
  { "ellisonleao/gruvbox.nvim", lazy = true },
}
