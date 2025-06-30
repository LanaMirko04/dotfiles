return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
        require("dashboard").setup {
            theme = "doom",
            config = {
                header = {
                    "                                                 ",
                    "                                                 ",
                    "██╗             ███╗   ██╗██╗   ██╗██╗███╗   ███╗",
                    "╚██╗            ████╗  ██║██║   ██║██║████╗ ████║",
                    " ╚██╗           ██╔██╗ ██║██║   ██║██║██╔████╔██║",
                    " ██╔╝           ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
                    "██╔╝███████╗    ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
                    "╚═╝ ╚══════╝    ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
                    "                                                 ",
                    "                                                 ",
                },
                center = {
                    {
                        icon = " ",
                        icon_hl = "Title",
                        desc = "Find Files              ",
                        key = "f",
                        key_hl = "Number",
                        key_format = " %s",
                        action = ":Telescope find_files"
                    },
                    {
                        icon = " ",
                        icon_hl = "Title",
                        desc = "File Browser           ",
                        key = "b",
                        key_hl = "Number",
                        key_format = " %s",
                        action = ":Telescope file_browser"
                    },
                    {
                        icon = " ",
                        icon_hl = "Title",
                        desc = "Old Files               ",
                        key = "o",
                        key_hl = "Number",
                        key_format = " %s",
                        action = ":Telescope oldfiles"
                    },
                    {
                        icon = "󰈞 ",
                        icon_hl = "Title",
                        desc = "Live Grep              ",
                        key = "g",
                        key_hl = "Number",
                        key_format = " %s",
                        action = ":Telescope live_grep"
                    },
                },
                footer = {
                    "                                                      ",
                    "                                                      ",
                    "                                                      ",
                    "Di solito, quel muro là di erba, chiamato Dio Porco...",
                },
            },
        }
    end,
    dependencies = { "nvim-tree/nvim-web-devicons" },
}
