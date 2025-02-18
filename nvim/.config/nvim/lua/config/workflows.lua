-- Obsidian

-- Navigate to obsidian vault
vim.keymap.set(
  "n",
  "<leader>oo",
  ":cd /Users/harrybaines/Library/Mobile\\ Documents/iCloud~md~obsidian/Documents/Harry\\ Baines\\ Vault"
)

-- Daily note
vim.keymap.set("n", "<leader>day", ":ObsidianToday")
vim.keymap.set("n", "<leader>tom", ":ObsidianTomorrow")

-- ZazenCodes inspiration
-- Convert note to template and remove leading white space
vim.keymap.set("n", "<leader>on", ":ObsidianTemplate Note<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>")

-- Strip date from note title and replace dashes with spaces (must have cursor on title)
vim.keymap.set("n", "<leader>of", ":s/\\(# \\)[0-9-]*_/# / | s/-/ /g<cr>")
