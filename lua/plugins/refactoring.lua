return {
  "ThePrimeagen/refactoring.nvim",
  event = { "BufReadPre", "BufNewFile" },
  init = function()
    -- local r = require("utils.remaps")

    -- r.which_key("<leader>re", "extract")
    -- r.which_key("<leader>ri", "inline")

    local opts = { silent = true, expr = false }

    vim.keymap.set({ "n", "v" }, "<leader>reb", function()
      require("refactoring").refactor("Extract Block")
    end, { desc = "Extract Block", silent = true, expr = false })

    vim.keymap.set({ "n", "v" }, "<leader>reB", function()
      require("refactoring").refactor("Extract Block To File")
    end, { desc = "Extract Block", silent = true, expr = false })

    vim.keymap.set({ "n", "v" }, "<leader>rem", function()
      require("refactoring").refactor("Extract Function")
    end, { desc = "Extract Function", silent = true, expr = false })

    vim.keymap.set({ "n", "v" }, "<leader>reM", function()
      require("refactoring").refactor("Extract Function To File")
    end, { desc = "Extact Function to file", silent = true, expr = false })

    vim.keymap.set({ "n", "v" }, "<leader>rev", function()
      require("refactoring").refactor("Extract Variable ")
    end, { desc = "Extact variable", silent = true, expr = false })

    vim.keymap.set({ "n", "v" }, "<leader>riv", function()
      require("refactoring").refactor("Inline Variable")
    end, { desc = "Inline variable", silent = true, expr = false })

    vim.keymap.set({ "n", "v" }, "<leader>rl", function()
      require("telescope").extensions.refactoring.refactors()
    end, { desc = "Refactor", silent = true, expr = false })
  end,
  config = function()
    local refactoring = require("refactoring")

    refactoring.setup({ show_success_message = true })
  end,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-treesitter/nvim-treesitter" },
  },
}
