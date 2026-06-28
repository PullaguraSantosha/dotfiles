return {
  {
    "sainnhe/gruvbox-material",
    priority = 1000,
    config = function()
      ------------------------------------------------------------------
      -- Gruvbox Material
      ------------------------------------------------------------------
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_foreground = "material"
      vim.g.gruvbox_material_enable_italic = false
      vim.g.gruvbox_material_better_performance = 1
      vim.g.gruvbox_material_transparent_background = 0

      ------------------------------------------------------------------
      -- Apply theme
      ------------------------------------------------------------------
      vim.cmd.colorscheme("gruvbox-material")

      ------------------------------------------------------------------
      -- UI
      ------------------------------------------------------------------
      vim.opt.termguicolors = true
      vim.opt.cursorline = true
      vim.opt.cursorlineopt = "line,number"
      vim.opt.relativenumber = true

      ------------------------------------------------------------------
      -- Custom Highlights
      ------------------------------------------------------------------
      local function apply_highlights()
        vim.api.nvim_set_hl(0, "FloatBorder", {
          fg = "#7c6f64",
          bg = "NONE",
        })

        vim.api.nvim_set_hl(0, "LineNr", {
          fg = "#665c54",
        })

        vim.api.nvim_set_hl(0, "CursorLineNr", {
          fg = "#fe8019",
          bold = true,
        })

        vim.api.nvim_set_hl(0, "CursorLine", {
          bg = "#3c3836",
        })

        vim.api.nvim_set_hl(0, "Visual", {
          bg = "#504945",
        })

        vim.api.nvim_set_hl(0, "Search", {
          bg = "#fabd2f",
          fg = "#1d2021",
        })

        vim.api.nvim_set_hl(0, "IncSearch", {
          bg = "#fe8019",
          fg = "#1d2021",
        })
      end

      apply_highlights()

      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = apply_highlights,
      })

      ------------------------------------------------------------------
      -- Insert Mode
      ------------------------------------------------------------------
      vim.api.nvim_create_autocmd("InsertEnter", {
        callback = function()
          vim.opt.relativenumber = false
          vim.api.nvim_set_hl(0, "CursorLine", {
            bg = "#504945",
          })
        end,
      })

      vim.api.nvim_create_autocmd("InsertLeave", {
        callback = function()
          vim.opt.relativenumber = true
          vim.api.nvim_set_hl(0, "CursorLine", {
            bg = "#3c3836",
          })
        end,
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
