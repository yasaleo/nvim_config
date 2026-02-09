return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
          exclude = { "**/dist/**", "**/node_modules/**" },
          layout = {
            layout = {
              position = "right",
              -- width = 0.3,
            },
          },
        },
        files = {
          hidden = true,
          ignored = true,
          exclude = { "**/dist/**", "**/node_modules/**" },
        },
      },
    },
  },
}
