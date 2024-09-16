local M = {}

function M.setup()
    -- Ensure that you have nvim-lspconfig installed
    local lspconfig = require('lspconfig')
    
    -- Configure Pylyzer
    lspconfig.ruff.setup({
        init_options = {
            settings = {
                ruff = {
                    checkOnType = false,
                    diagnostics = true,
                    inlayHints = true,
                    smartCompletion = true
                }
            }
        },
    })
end

return M

