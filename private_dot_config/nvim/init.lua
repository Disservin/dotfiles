-- When git opens nvim for a commit message, rebase todo, tag or merge message,
-- start a plain editor without LazyVim or any plugins.
local git_files = {
  "COMMIT_EDITMSG",
  "MERGE_MSG",
  "TAG_EDITMSG",
  "EDIT_DESCRIPTION",
  "git%-rebase%-todo",
  "addp%-hunk%-edit%.diff",
}
for _, arg in ipairs(vim.fn.argv()) do
  local name = vim.fn.fnamemodify(arg, ":t")
  for _, pattern in ipairs(git_files) do
    if name:match("^" .. pattern .. "$") then
      vim.opt.number = true
      vim.opt.spell = true
      vim.opt.termguicolors = true
      vim.cmd.colorscheme("habamax")
      return
    end
  end
end

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
