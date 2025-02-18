return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "Harry Baines Vault",
        path = "/Users/harrybaines/Library/Mobile Documents/iCloud~md~obsidian/Documents/Harry Baines Vault",
      },
    },

    templates = {
      folder = "05. Extras/Templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
    },

    daily_notes = {
      folder = "04. Daily Notes",
      date_format = "%Y-%m-%d",
      template = "Daily Note",
    },

    -- because we use markdown.nvim
    ui = { enable = false },

    -- see below for full list of options 👇
  },
}
