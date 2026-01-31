return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        hidden = true,
        file_ignore_patterns = {},
      },
      pickers = {
        find_files = {
          hidden = true, -- Show hidden/dot files
          no_ignore = true, -- Show git-ignored files
        },
      },
    },
  },
}
