return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local nvim_tree = require("nvim-tree")
    local view = require("nvim-tree.view")
    
    -- Save original open function
    local original_open = view.open
    
    -- Override to add line numbers
    view.open = function(options)
      original_open(options)
      -- Set options after NvimTree creates the window
      local win = vim.api.nvim_get_current_win()
      vim.wo[win].number = true
      vim.wo[win].relativenumber = true
    end
    
    nvim_tree.setup({
      -- your regular opts
      view = {
        -- number settings here might still work with the override above
      }
    })
  end,
}
