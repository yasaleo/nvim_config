return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
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
        },
      },
    },
  },
}
