-- ~/.config/nvim/lua/plugins/rust.lua

return {
  {
    "mrcjkb/rustaceanvim",
    version = "^6",
    ft = { "rust" },

    init = function()
      vim.g.rustaceanvim = {
        server = {
          on_attach = function(_, bufnr)
            local map = vim.keymap.set

            local opts = {
              buffer = bufnr,
              silent = true,
            }

            map("n", "<leader>ra", function()
              vim.cmd.RustLsp("codeAction")
            end, vim.tbl_extend("force", opts, {
              desc = "Rust: code action",
            }))

            map("n", "<leader>rd", function()
              vim.cmd.RustLsp("openDocs")
            end, vim.tbl_extend("force", opts, {
              desc = "Rust: abrir documentação",
            }))

            map("n", "<leader>rp", function()
              vim.cmd.RustLsp("parentModule")
            end, vim.tbl_extend("force", opts, {
              desc = "Rust: módulo pai",
            }))

            map("n", "<leader>re", function()
              vim.cmd.RustLsp("explainError")
            end, vim.tbl_extend("force", opts, {
              desc = "Rust: explicar erro",
            }))
          end,

          default_settings = {
            ["rust-analyzer"] = {
              cargo = {
                allFeatures = true,
                loadOutDirsFromCheck = true,
                buildScripts = {
                  enable = true,
                },
              },

              check = {
                command = "clippy",
                extraArgs = {
                  "--all-targets",
                  "--all-features",
                  "--",
                  "-W",
                  "clippy::all",
                },
              },

              procMacro = {
                enable = true,
              },

              diagnostics = {
                enable = true,
              },

              inlayHints = {
                bindingModeHints = {
                  enable = true,
                },
                closingBraceHints = {
                  enable = true,
                },
                closureReturnTypeHints = {
                  enable = "always",
                },
                discriminantHints = {
                  enable = "always",
                },
                expressionAdjustmentHints = {
                  enable = "always",
                },
                lifetimeElisionHints = {
                  enable = "always",
                  useParameterNames = true,
                },
                typeHints = {
                  enable = true,
                },
              },
            },
          },
        },

        tools = {
          hover_actions = {
            replace_builtin_hover = true,
          },

          crate_test = {
            flags = {
              "-q",
            },
          },
        },
      }
    end,
  },
}
