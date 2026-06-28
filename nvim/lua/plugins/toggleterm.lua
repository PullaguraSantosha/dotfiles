return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    direction = "float",

    start_in_insert = true,
    persist_mode = true,
    persist_size = true,

    float_opts = {
      border = "rounded",
      width = 100,
      height = 30,
      winblend = 4,

      row = function()
        return math.floor((vim.o.lines - 30) / 2) - 1
      end,

      col = function()
        return math.floor((vim.o.columns - 100) / 2) + 1
      end,
    },
  },
}
