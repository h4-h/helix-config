local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Tab>', builtin.git_files, {})
vim.keymap.set('n', '<S-Tab>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input('Grep > ') });
end)
