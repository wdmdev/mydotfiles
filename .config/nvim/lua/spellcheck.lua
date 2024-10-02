-- Function to toggle between English and Danish spell check
local M = {}

M.toggle_spell_lang = function()
  local current_lang = vim.opt.spelllang:get()[1]
  if current_lang == "en" then
    vim.opt.spelllang = "da"
  else
    vim.opt.spelllang = "en"
  end
  print("Spell language set to: " .. vim.opt.spelllang:get()[1])
end

-- Set up autocmd to enable spellcheck for specific file types
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = {"*.txt", "*.md"},
  callback = function()
    vim.opt.spell = true           -- Enable spell checking
    vim.opt.spelllang = "en"       -- Default to English
  end,
})

return M

