return {
  {

  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { { "nvim-lua/plenary.nvim"} },
  config = function()
    local telescope = require("telescope.builtin")
    vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Find files' })
    vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Grep files' })
    vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'List buffers' })
    vim.keymap.set('n', '<leader>fk', telescope.keymaps, { desc = 'Find keymaps' })
  end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}
