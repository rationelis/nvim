vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.ts",
    callback = function(args)
        vim.cmd("! eslint_d % --fix")
    end,
})
