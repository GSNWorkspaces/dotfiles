-- ~/.config/nvim/lua/plugins/mason.lua

return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "taplo",
        "shellcheck",
        "shfmt",
      },
    },
  },
}
