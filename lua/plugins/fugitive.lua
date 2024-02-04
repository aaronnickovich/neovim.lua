return {
  "tpope/vim-fugitive",
  init = function()
    -- local r = require("lt.utils.remaps")

    -- vim.keymap.set("n", "<leader>gs", "<cmd>G<CR>", "git status")
    -- keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    vim.keymap.set("n", "<leader>gf", "<cmd>diffget //2<CR>", { desc = "diffget 2" })
    vim.keymap.set("n", "<leader>gj", "<cmd>diffget //3<CR>", { desc = "diffget 3" })
    vim.keymap.set("n", "<leader>gD", "<cmd>Gdiffsplit<CR>", { desc = "shows diff with git" })
    vim.keymap.set("n", "<leader>gb", "<cmd>Git blame<CR>", { desc = "blame" })
    vim.keymap.set("n", "<leader>gt", "<cmd>0Gclog!<CR>", { desc = "Navigate history" })

    -- vim.which_key("<leader>gm", "merge conflicts")
    vim.keymap.set("n", "<leader>gmo", "<cmd>Gvdiffsplit!<CR>", { desc = "shows merge conflicts with git" })
    vim.keymap.set("n", "<leader>gml", "<cmd>Git mergetool<CR>", { desc = "load merge conflicts in quickfix list" })
  end,
  -- keys = {
  --   { "<leader>gs", function() require("neogit").open() end, desc = "Git status" },
  -- },
  keys = { "<leader>g" },
  event = "BufWinEnter",
}
