return {
    {
        "benlubas/molten-nvim",
        -- version = "^1.0.0",
        dependencies = {
            'willothy/wezterm.nvim',
        },
        build = ":UpdateRemotePlugins",  -- Necessary if it provides remote plugins
        init = function()
            highlight_group = "MoltenHighlight"
            update_interval = 100
            max_lines = 1000
            vim.g.molten_image_provider = "wezterm.nvim"
            vim.g.molten_output_win_max_height = 20
        end
    },
    {
        'willothy/wezterm.nvim',
        opts = {
            create_commands = false  -- Assuming this is valid based on your setup
        }
    }
}

