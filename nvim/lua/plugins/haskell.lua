return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        hls = {
          mason = false,
        },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add haskell
      vim.list_extend(opts.ensure_installed, {
        "haskell",
      })
    end,
  },
}
