vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local arg = vim.fn.argv(0)
    if arg and vim.fn.isdirectory(arg) == 1 then
      vim.cmd("lcd " .. arg)
    elseif arg ~= "" then
      vim.cmd("lcd " .. vim.fn.fnamemodify(arg, ":p:h"))
    end
  end,
})
