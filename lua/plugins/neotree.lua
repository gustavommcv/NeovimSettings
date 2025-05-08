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
        vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>")
      },
      filesystem = {
        filtered_items = {
          visible = true
        }
      },
      event_handlers = {
          {
            event = "file_opened",
            handler = function(file_path)
              require("neo-tree").close_all()
            end
          },
        }
    })
  end
}
