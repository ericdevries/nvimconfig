return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.3",
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
          require("telescope").load_extension("fzf")
        end,
      },
      {
        "nvim-lua/plenary.nvim",
      }
    },
    keys = {
      { "<leader>:",       "<cmd>Telescope command_history<cr>", desc = "Command History" },
      { "<leader><space>", "<cmd>Telescope find_files<cr>",      desc = "Find Files" },
      { ";",               "<cmd>Telescope find_files<cr>",      desc = "Find Files" },
      { "<leader>/",       "<cmd>Telescope live_grep<cr>",       desc = "Live grep" },
      { "<leader>rr",      "<cmd>Telescope resume<cr>",       desc = "Telescope Resume" },
    },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>f:f', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end
  },
}
