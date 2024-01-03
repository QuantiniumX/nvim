return {
    {

        {
            "folke/tokyonight.nvim",
            lazy = false,
            priority = 1000,
            opts = {
                style = "storm",
                transparent = true,
                styles = {
                    sidebars = "transparent",
                    floats = "transparent",
                },
            },
            config = function(_, opts)
                local tokyonight = require "tokyonight"
                tokyonight.setup(opts)
                tokyonight.load()
            end,
        },

    },

    {
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function()
            require('rose-pine').setup({
                disable_background = true,
            })
            vim.cmd('colorscheme rose-pine')
        end
    },
}
