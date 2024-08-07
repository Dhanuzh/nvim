-- Fix canceallevel for json files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "yaml", "yml", "Dockerfile" },
  -- pattern = {}
  callback = function()
    vim.wo.spell = false
    vim.wo.conceallevel = 0
  end,
})

vim.api.nvim_create_user_command("CopyAbsolutePath", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

vim.api.nvim_create_user_command("CopyRelPath", function()
  vim.api.nvim_call_function("setreg", { "+", vim.fn.fnamemodify(vim.fn.expand("%"), ":.") })
end, {})
