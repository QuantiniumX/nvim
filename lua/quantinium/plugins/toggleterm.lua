return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",

    config = function()

      local toggleterm = require("toggleterm");
      toggleterm.setup {

        size = 10,
        open_mapping = [[<leader>to]],
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = false,
        insert_mappings = false,
        persist_size = true,
        direction = "float",
        close_on_exit = true,
        shell = vim.o.shell,
        float_opts = {
          border = "curved",
          winblend = 0,
          highlights = {
            border = "Normal",
            background = "Normal",
          },
        },
      }
    end,
  }
}
