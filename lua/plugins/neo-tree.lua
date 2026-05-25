-- ~/.config/nvim/lua/plugins/neo-tree.lua

return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.event_handlers = opts.event_handlers or {}

    table.insert(opts.event_handlers, {
      event = "neo_tree_buffer_enter",
      handler = function(args)
        local win = args.winid or vim.api.nvim_get_current_win()

        vim.wo[win].number = true
        vim.wo[win].relativenumber = true -- change to true if you want relative numbers
      end,
    })
  end,
}

