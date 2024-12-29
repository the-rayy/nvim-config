return {
  "epwalsh/obsidian.nvim",
  version = "v3.9.0",
  lazy = false,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
      workspaces = {
        {
          name = "personal",
          path = "/Users/ray/Obsidian/personal",
        },
      },
      notes_subdir = "notes",
      daily_notes = {
        folder = "daily",
      },
      completion = {
        nvim_cmp = true,
        min_chars = 2,
      },
      picker = {
        name = "telescope.nvim",
      },

  },
  setup = function()
    require("obsidian").setup({
    })
  end,
}
