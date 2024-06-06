local M = {}

function M.setup()
  require('lspconfig').texlab.setup{
    settings = {
      texlab = {
        lint = {
          onChange = true,  -- Enable linting as you type
          onSave = true     -- Lint when saving the file
        },
        chktex = {
          onOpenAndSave = true,  -- Run ChkTeX upon file opening or saving
          onEdit = true          -- Run ChkTeX on each edit
        },
        latexindent = {
          modifyLineBreaks = true  -- Reformat line breaks when indenting
        }
      }
    }
  }
end

return M

