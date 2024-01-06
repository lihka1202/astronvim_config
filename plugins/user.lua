return {
  {
    "nvim-neotest/neotest",
    requires = {
      -- ...
      "thenbe/neotest-playwright",
    },
    config = function()
      require("neotest").setup {
        -- ...
        adapters = {
          require("neotest-playwright").adapter {
            options = {
              persist_project_selection = true,
              enable_dynamic_test_discovery = true,
            },
          },
        },
      }
    end,
  },
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- nvim v0.8.0
}
