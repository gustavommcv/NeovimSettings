return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "echasnovski/mini.icons" },
  config = function()
    require("alpha").setup(require("alpha.themes.dashboard").config)
    local startify = require("alpha.themes.startify")
    startify.file_icons.provider = "devicons"
  end,
}
