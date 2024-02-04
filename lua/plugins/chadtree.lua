return {
  "ms-jpq/chadtree",
  branch = "chad",
  run = "python3 -m chadtree deps",
  config = function()
    vim.keymap.set("n", "<leader>v", "<cmd>CHADopen<cr>")

    local stdin_group = vim.api.nvim_create_augroup("StdIn", { clear = true })
    vim.api.nvim_create_autocmd("StdinReadPre", {
      callback = function()
        vim.api.nvim_exec2([[let s:std_in=1]], {})
      end,
      group = stdin_group,
      pattern = "*",
    })

    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        vim.api.nvim_exec2(
          [[if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'Explore ' getcwd() | endif]],
          {}
        )
      end,
      group = stdin_group,
      pattern = "*",
    })
  end,
}
