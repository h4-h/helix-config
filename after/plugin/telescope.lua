local telescope = require("telescope")

telescope.setup({
  extensions = {
    coc = {
        theme = 'ivy',
        prefer_locations = true,
    }
  },
})

telescope.load_extension('coc')

local builtin = require('telescope.builtin')

local function grep()
  builtin.grep_string({ search = vim.fn.input('Grep > ') })
end

local function try_git()
  if vim.loop.fs_stat('.git') ~= nil then
    builtin.git_files({})
  else
    builtin.find_files({})
  end
end

local function open_errors()
  vim.cmd([[Telescope coc workspace_diagnostics]])
end

vim.keymap.set('n', '<leader>f', try_git, { desc = 'Smart file search, trying to open git files' })
vim.keymap.set('n', '<leader>F', builtin.find_files, { desc = 'Open all file search' })
vim.keymap.set('n', '<leader>fs', grep, { desc = 'Grep search' })
vim.keymap.set('n', '<leader>e', open_errors, { desc = 'Display all coc errors' })
