local function SetLineNumberColors()
  vim.api.nvim_set_hl(0, "LineNr", { fg = "#AABBCC" })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FFFFFF", bold = true })
  vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#98c379" })  -- above cursor (blue)
  vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#79dac8" })  -- below cursor (pink)
end

vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter", "BufEnter" }, {
  pattern = "*",
  callback = SetLineNumberColors,
})
