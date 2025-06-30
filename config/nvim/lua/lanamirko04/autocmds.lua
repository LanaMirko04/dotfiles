vim.api.nvim_create_augroup("TexAutoCmds", { clear = true })

-- Indent LaTeX sources after save
vim.api.nvim_create_autocmd("BufWritePost", {
    group = "TexAutoCmds",
    pattern = "*.tex",
    callback = function()
        vim.cmd("silent !tex-fmt -t 4 %")
    end,
})
