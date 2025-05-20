-- example lazy.nvim install setup
return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "lackluster-hack",
    },
  },
  {
    "folke/tokyonight.nvim",
    enabled = false,
  },

  "slugbyte/lackluster.nvim",
  lazy = false,
  priority = 1000,
  init = function()
    -- vim.cmd.colorscheme("lackluster")
    vim.cmd.colorscheme("lackluster-hack") -- my favorite
    -- vim.cmd.colorscheme("lackluster-mint")
  end,
}
