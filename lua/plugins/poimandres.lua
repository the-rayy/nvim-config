return {
  "olivercederborg/poimandres.nvim",
  config = function()
    require("poimandres").setup({
      din_nc_background = true,
      disable_background = true
    })

    vim.cmd.colorscheme "poimandres"
  end
}
