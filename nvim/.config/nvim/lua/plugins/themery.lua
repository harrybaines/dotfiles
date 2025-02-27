return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      themes = { "gruvbox", "nord", "nordic", "gruvbox-material", "tokyonight", "cyberdream", "sonokai", "rose-pine" }, -- Your list of installed colorschemes.
      livePreview = true, -- Apply theme while picking. Default to true.
    })
  end,
}
