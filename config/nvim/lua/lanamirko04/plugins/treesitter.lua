return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
    config = function()
    local configs = require("nvim-treesitter.configs")
        configs.setup {
            ensure_installed = "all",
            sync_install = false, 
            ignore_install = { "" },
            highlight = {
                enable = true,
                disable = { "" },
                additional_vim_regex_highlighting = true,
          },
        }
    end
}
