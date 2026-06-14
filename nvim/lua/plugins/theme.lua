return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      transparent = false,
      terminal_colors = true,
      on_colors = function(colors)
        colors.bg = "#0b0f1a" -- dark blue background
        colors.bg_dark = "#080c14"
      end,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },

  -- UI + Cursor behavior (this is NOT a plugin, just config attached safely)
  {
    "folke/tokyonight.nvim",
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd("colorscheme tokyonight")
      -- 🔥 Insert mode visual feedback
      vim.api.nvim_create_autocmd("InsertEnter", {
        callback = function()
          vim.opt.relativenumber = false
        end,
      })

      vim.api.nvim_create_autocmd("InsertLeave", {
        callback = function()
          vim.opt.relativenumber = true
        end,
      })
      -- enable true color
      vim.opt.termguicolors = true

      -- cursor shapes (works in iTerm)
      -- cursor line
      vim.opt.cursorline = true
      vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1a1f2e" })

      -- insert mode visual effect
      vim.api.nvim_create_autocmd("InsertEnter", {
        callback = function()
          vim.api.nvim_set_hl(0, "CursorLine", { bg = "#112233" })
        end,
      })

      vim.api.nvim_create_autocmd("InsertLeave", {
        callback = function()
          vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1a1f2e" })
        end,
      })
    end,
  },
}
