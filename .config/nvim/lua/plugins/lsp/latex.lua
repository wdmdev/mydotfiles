local M = {}

function M.setup()
  require('lspconfig').texlab.setup{
    settings = {
      texlab = {
        build = {
          executable = "latexmk",
          args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
          onSave = true,  -- Automatically build on save
          forwardSearchAfter = true
        },
        forwardSearch = {
          executable = "zathura",  -- Replace with your preferred PDF viewer
          args = { "--synctex-forward", "%l:1:%f", "%p" }
        },
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

