local builtin = require('telescope.builtin')

vim.keymap.set('n', '<Tab>', function()
  if vim.loop.fs_stat('.git') ~= nil then builtin.git_files({})
  else builtin.find_files({}) end
end, {})

vim.keymap.set('n', '<S-Tab>', builtin.find_files, {})

vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input('Grep > ') })
end)
