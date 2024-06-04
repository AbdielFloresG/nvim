return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      filters = {
        dotfiles = true,
      },
      view = {
        side = "right",
      },
    })

    vim.keymap.set("n", "<C-n>", ":NvimTreeFindFile<CR>")
    vim.keymap.set("n", "<leader>b", ":NvimTreeToggle<CR>")
  end,
}
