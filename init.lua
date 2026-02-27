-- init.lua
require("config.lazy")

vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged", "BufLeave", "FocusLost" }, {
  callback = function()
    if vim.bo.modified and vim.bo.filetype ~= "" then
      vim.cmd("silent write")
    end
  end,
})
