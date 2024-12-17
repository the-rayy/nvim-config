return {
  {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")
    treesitter.setup({
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    requires = {
      "nvim-treesitter/nvim-treesitter"
    },
    config = function()
      local treesitter = require("treesitter-context")
      treesitter.setup{
        enable = true,
        max_lines = 5,
        line_numbers = true,
        trim_scope = 'outer',
        mode = 'topline',
        separator = '-'
      }
    end
  }
}
