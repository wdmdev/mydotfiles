return {
  {
    "dracula/vim",
    lazy = false, -- load during startup
    priority = 1000, -- load before other plugins (choose high number)
    config = function()
      -- load the colorscheme
      vim.cmd([[colorscheme dracula]])
    end,
  }
}
