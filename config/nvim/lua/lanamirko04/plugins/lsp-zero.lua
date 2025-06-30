return {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
        { "neovim/nvim-lspconfig" },
        { "williamboman/mason.nvim" },
        { "williamboman/mason-lspconfig.nvim" },
    },
    config = function()
        -- Thx Tonidotpy (https://github.com/Tonidotpy)
        local lsp = require("lsp-zero").preset()

        lsp.ensure_installed({
            "clangd",
        })

        -- Fix undefined global "vim"
        lsp.nvim_workspace()

        lsp.set_preferences({
            suggest_lsp_servers = false,
            sign_icons = {
                error = "E",
                warn = "W",
                hint = "H",
                info = "I"
            },

        })

        lsp.on_attach(function(client, bufnr)
            -- see :help lsp-zero-keybinings
            -- to learn the available actions
            lsp.default_keymaps({ buffer = bufnr })
        end)

        lsp.format_on_save({
            format_opts = {
                async = true,
                timeout_ms = 10000,
            },
            servers = {
                ["clangd"] = { "c", "cpp" },
            }
        })

        local lspconfig = require("lspconfig")

        lspconfig.clangd.setup({
            cmd = { "clangd", "--background-index"},
        })
    end
}
