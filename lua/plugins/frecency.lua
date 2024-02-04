return {
  "nvim-telescope/telescope-frecency.nvim",
  config = function()
    require("telescope").load_extension("frecency")
  end,
  dependencies = {
    "kkharji/sqlite.lua",
    config = function()
      vim.g.sqlite_clib_path = "C:/Users/aaron/AppData/Local/sqlite3/sqlite3.dll"
    end,
  },
}
