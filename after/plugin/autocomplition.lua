vim.g.coq_settings = {
  auto_start = true,
  keymap = {
    pre_select = true,
  }
}

vim.cmd([[COQnow -s]])
