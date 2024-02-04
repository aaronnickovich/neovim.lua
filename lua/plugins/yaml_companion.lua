-- TODO(aaron): need to configure LSP with this:
-- https://github.com/someone-stole-my-name/yaml-companion.nvim?tab=readme-ov-file#%EF%B8%8F--configuration
return {
  -- add yaml specific modules to treesitter
  {
    "nvim-treesitter/nvim-treesitter",

    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "yaml" })
      end
    end,
  },
  -- yaml schema support
  {
    "b0o/SchemaStore.nvim",
    lazy = true,
    version = false, -- last release is way too old
  },

  {
    "someone-stole-my-name/yaml-companion.nvim",
    requires = {
      { "neovim/nvim-lspconfig" },
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim" },
    },
    config = function()
      require("telescope").load_extension("yaml_schema")
    end,
    init = function()
      local cfg = require("yaml-companion").setup({
        -- Add any options here, or leave empty to use the default settings
        -- lspconfig = {
        --   cmd = {"yaml-language-server"}
        -- },
      })
      require("lspconfig")["yamlls"].setup(cfg)
    end,
  },
}
