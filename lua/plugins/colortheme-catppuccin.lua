return {
  'catppuccin/nvim',
  name = 'catppuccin',
  lazy = false,
  priority = 1000,
  config = function()
    -- Configure Catppuccin with custom settings
    require('catppuccin').setup {
      flavour = 'mocha', -- Default flavour, can be: latte, frappe, macchiato, mocha
      background = {
        light = 'latte',
        dark = 'mocha',
      },
      transparent_background = false, -- Enable background transparency
      show_end_of_buffer = false,
      term_colors = true,
      dim_inactive = {
        enabled = false,
        shade = 'dark',
        percentage = 0.15,
      },
      no_italic = false,
      no_bold = false,
      no_underline = false,
      styles = {
        comments = { 'italic' },
        conditionals = { 'italic' },
      },

      -- Custom color overrides (optional)
      color_overrides = {
        mocha = {
          -- You can customize specific colors here
          -- base = "#000000",
          -- text = "#ffffff",
        },
      },

      -- Custom highlight groups (optional)
      custom_highlights = function(colors)
        return {
          -- Examples of custom highlight group modifications
          -- Comment = { fg = colors.flamingo },
          -- TabLineSel = { bg = colors.pink },
        }
      end,

      -- Integrations
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { 'italic' },
            hints = { 'italic' },
            warnings = { 'italic' },
            information = { 'italic' },
          },
        },
      },
    }

    -- Toggle background transparency
    -- local bg_transparent = false
    -- local toggle_transparency = function()
    --   bg_transparent = not bg_transparent
    --   vim.g.colorscheme.transparency = bg_transparent
    --   vim.cmd [[colorscheme catppuccin]]
    -- end
    local toggle_transparency = function()
      local cat = require 'catppuccin'
      cat.options.transparent_background = not cat.options.transparent_background
      cat.compile()
      vim.cmd.colorscheme(vim.g.colors_name)
    end

    -- Set keymap for toggling transparency
    vim.keymap.set('n', '<leader>bg', toggle_transparency, {
      noremap = true,
      silent = true,
      desc = 'Toggle background transparency',
    })

    -- Set the colorscheme
    vim.cmd.colorscheme 'catppuccin'
  end,
}
