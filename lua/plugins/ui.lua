return {
  { -- Theme inspired by Atom
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
      require("onedark").setup({
        transparent = true,
      })
      vim.cmd.colorscheme("onedark")
    end,
  },
  { -- Set lualine as statusline
    "nvim-lualine/lualine.nvim",
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = false,
        theme = "onedark",
        component_separators = "|",
        section_separators = "",
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    version = "v3.*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {},
  },
  {
    "folke/trouble.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {},
    keys = {
      { "<leader>xx", "<cmd>TroubleToggle<cr>", desc = "Toggle trouble window" },
      { "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Toggle trouble workspace diagnostics" },
      { "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Toggle trouble document diagnostics" },
      { "<leader>xl", "<cmd>TroubleToggle loclist<cr>", desc = "Toggle trouble location list" },
      { "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", desc = "Toggle trouble quickfix list" },
      { "<leader>xr", "<cmd>TroubleToggle lsp_references<cr>", desc = "Toggle trouble LSP references" },
    },
  },
}
