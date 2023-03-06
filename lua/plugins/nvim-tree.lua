return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      { "<C-n>", "<cmd>NvimTreeToggle<cr>", desc = "Toggle nvim-tree" },
      { "<leader>e", "<cmd>NvimTreeFocus<cr>", desc = "Open and focus nvim-tree" },
    },
    opts = {},
  },
}
