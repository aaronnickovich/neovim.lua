-- file transition
return {
  "ThePrimeagen/harpoon",
  init = function()
    -- [[ Configure Harpoon keymaps ]]
    vim.keymap.set("n", "<leader>m", require("harpoon.mark").add_file, { desc = "[M]ark file in Harpoon" })
    vim.keymap.set("n", "<C-e>", require("harpoon.ui").toggle_quick_menu, { desc = "List Harpoon Files" })
    vim.keymap.set("n", "<A-1>", function()
      require("harpoon.ui").nav_file(1)
    end, { desc = "Nav to Harpoon File [1]" })
    vim.keymap.set("n", "<A-2>", function()
      require("harpoon.ui").nav_file(2)
    end, { desc = "Nav to Harpoon File [2]" })
    vim.keymap.set("n", "<A-3>", function()
      require("harpoon.ui").nav_file(3)
    end, { desc = "Nav to Harpoon File [3]" })
    vim.keymap.set("n", "<A-4>", function()
      require("harpoon.ui").nav_file(4)
    end, { desc = "Nav to Harpoon File [4]" })
  end,
}
