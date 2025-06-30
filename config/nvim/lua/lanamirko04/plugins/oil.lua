return {
    'stevearc/oil.nvim',
    opts = {
        keymaps = {
            ["<C-j>"] = { "<C-w>j", desc = "switch window down" },
            ["<C-k>"] = { "<C-w>k", desc = "switch window up" },
            ["<C-h>"] = { "<C-w>h", desc = "switch window left" },
            ["<C-l>"] = { "<C-w>l", desc = "switch window right" },
        },
    },
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
}
