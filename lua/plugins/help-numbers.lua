-- lua/plugins/help-numbers.lua
return {
  "AstroNvim/astrocore",
  opts = {
    autocmds = {
      help_line_numbers = {
        {
          event = "FileType",
          pattern = { "help", "man" },
          desc = "Enable line numbers in help files",
          callback = function()
            vim.wo.number = true
            vim.wo.relativenumber = true
          end,
        },
      },
    },
  },
}
