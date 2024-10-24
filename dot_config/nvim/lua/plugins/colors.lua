return
{
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.opt.termguicolors = true
    vim.cmd.colorscheme('tokyonight')
  end,
  opts = {
    style = "storn",
    transparent = true,
    styles = {
      sidebards = "transparent",
    },
  },
}
