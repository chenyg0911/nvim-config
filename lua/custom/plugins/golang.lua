return {
  "ray-x/go.nvim",
  dependencies = {  -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
 keys = {
    { "<leader>gd", "<cmd>GoDoc<cr>", desc = "GoDoc" },
    { "<leader>gi", "<cmd>GoImport<cr>", desc = "GoImport" },
  },
 
  config = function()
    require("go").setup()
  end,
  event = {"CmdlineEnter"},
  ft = {"go", 'gomod'},
  build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
}

