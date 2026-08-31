-- ~/.config/nvim/lua/plugins/rust-tools.lua

return {
  {
    "saecki/crates.nvim",
    ft = {
      "toml",
    },
    opts = {
      completion = {
        cmp = {
          enabled = true,
        },
      },

      popup = {
        border = "rounded",
      },

      lsp = {
        enabled = true,
        actions = true,
        completion = true,
        hover = true,
      },
    },
    config = function(_, opts)
      local crates = require("crates")
      crates.setup(opts)

      vim.keymap.set("n", "<leader>cu", crates.upgrade_all_crates, {
        desc = "Cargo: atualizar crates",
      })

      vim.keymap.set("n", "<leader>cv", crates.show_versions_popup, {
        desc = "Cargo: mostrar versões",
      })

      vim.keymap.set("n", "<leader>cf", crates.show_features_popup, {
        desc = "Cargo: mostrar features",
      })

      vim.keymap.set("n", "<leader>cr", crates.reload, {
        desc = "Cargo: recarregar crates",
      })
    end,
  },
}
