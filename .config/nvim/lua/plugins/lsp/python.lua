local M = {}

function M.setup()
    -- Ensure that you have nvim-lspconfig installed
    local lspconfig = require('lspconfig')
    
    -- Configure Pylyzer
    lspconfig.pylyzer.setup({
      cmd = { "pylyzer", "--server" },  -- Make sure 'pylyzer' is in your PATH or provide the full path to the binary
      filetypes = { "python" },
      root_dir = lspconfig.util.root_pattern(".git", "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt"),
      settings = {
        {
            python = {
                checkOnType = false,
                diagnostics = true,
                inlayHints = true,
                smartCompletion = true
            }
        }
      },
      single_file_support = true
    })
end

return M

