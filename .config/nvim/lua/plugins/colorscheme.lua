return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- load during startup
    priority = 1000, -- load before other plugins (choose high number)
    config = function()
      -- load the colorscheme
      vim.cmd([[colorscheme catppuccin]])
    end,
  }
}
