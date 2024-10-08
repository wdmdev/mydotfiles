local M = {}

function M.setup()
    local lspconfig = require("lspconfig")
    lspconfig.marksman.setup({
        cmd = { "marksman", "server" },
        filetypes = { "markdown" },
        root_dir = lspconfig.util.root_pattern(".git", vim.fn.getcwd()),
        settings = {},
    })
end

return M
