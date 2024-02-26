return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next,     -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            ['<C-u>'] = false,
            ['<C-d>'] = false,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set('n', '<leader>gf', "<cmd>Telescope git_files", { desc = 'Search [G]it [F]iles' })
    keymap.set('n', '<leader>sf', "<cmd>Telescope find_files", { desc = '[S]earch [F]iles' })
    keymap.set('n', '<leader>sh', "<cmd>Telescope help_tags", { desc = '[S]earch [H]elp' })
    keymap.set('n', '<leader>sw', "<cmd>Telescope grep_string", { desc = '[S]earch current [W]ord' })
    keymap.set('n', '<leader>sg', "<cmd>Telescope live_grep", { desc = '[S]earch by [G]rep' })
    keymap.set('n', '<leader>sd', "<cmd>Telescope diagnostics", { desc = '[S]earch [D]iagnostics' })
    keymap.set('n', '<leader>sr', "<cmd>Telescope resume", { desc = '[S]earch [R]esume' })
  end,
}
