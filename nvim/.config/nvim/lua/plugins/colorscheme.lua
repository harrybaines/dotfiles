return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = function(_, opts)
      opts.transparent = true
      opts.italic_comments = true
      opts.borderless_pickers = false
    end,
  },

  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nordic").load()
    end,
  },

  {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.nord_contrast = true
      vim.g.nord_borders = false
      vim.g.nord_disable_background = false
      vim.g.nord_italic = false
      vim.g.nord_uniform_diff_background = true
      vim.g.nord_bold = false
      vim.cmd.colorscheme("nord")
    end,
  },

  -- modicator (auto color line number based on vim mode)
  {
    "mawkler/modicator.nvim",
    dependencies = "scottmckendry/cyberdream.nvim",
    init = function()
      -- These are required for Modicator to work
      vim.o.cursorline = false
      vim.o.number = true
      vim.o.termguicolors = true
    end,
    opts = {},
  },

  -- Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = function(_, opts)
      opts.transparent_mode = true
    end,
  },

  -- or wittyjudge
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      --vim.g.gruvbox_material_transparent_background = 1

      --vim.g.gruvbox_material_background = "hard"
      --vim.g.gruvbox_material_colors_override = { bg0 = "#1C2021" }

      --vim.cmd.colorscheme("gruvbox-material")
    end,
  },

  -- tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
  },

  {
    "sainnhe/sonokai",
    priority = 1000,
    config = function()
      --vim.g.sonokai_transparent_background = "1"
      vim.g.sonokai_enable_italic = "1"
      vim.g.sonokai_style = "andromeda"
      vim.cmd.colorscheme("sonokai")
    end,
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      styles = {
        italic = false, -- Disable italics globally
      },
    },
    config = function(_, opts)
      require("rose-pine").setup(opts)
      --vim.cmd("colorscheme rose-pine")
    end,
  },
}
