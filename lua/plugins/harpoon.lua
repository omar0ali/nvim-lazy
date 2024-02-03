return {
  "ThePrimeagen/harpoon",
  config = function ()
    vim.keymap.set('n', '<leader>hf', ":lua require('harpoon.mark').add_file()<CR>",
      { desc = "Harpoon Add File" })
    vim.keymap.set('n', '<leader>hm', ":lua require('harpoon.ui').toggle_quick_menu()<CR>",
      { desc = "Harpoon Menu" })
    vim.keymap.set('n', '<leader>hn', ":lua require('harpoon.ui').nav_next()<CR>",
      { desc = "Harpoon Nav to next mark" })
    vim.keymap.set('n', '<leader>hp', ":lua require('harpoon.ui').nav_prev()<CR>",
      { desc = "Harpoon Nav to previous mark" })
    vim.keymap.set('n', '<leader>ht', ":lua require('harpoon.term').gotoTerminal(1)",
      { desc = "Harpoon Nav to terminal 1" })
  end
}

-- https://github.com/ThePrimeagen/harpoon
