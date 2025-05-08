return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {  
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", 
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
  },
  config = function()
    require("neo-tree").setup({
      window = {
        position = "right",
        width = 40,
        vim.keymap.set("n", "<leader>e", "<Cmd>Neotree reveal<CR>")
      }
    })
  end
}
