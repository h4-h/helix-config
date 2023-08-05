vim.g.mapleader = ' '

vim.keymap.set('n', '<leader><tab>', vim.cmd.Ex)
vim.keymap.set('i', '<C-f>', '<Esc>')

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
