vim.g.mapleader = ' '

vim.keymap.set('i', '<C-f>', '<Esc>')
vim.keymap.set('n', '<leader><Tab>', vim.cmd.Ex)
vim.keymap.set('n', '<leader>g', vim.cmd.Git)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)

-- https://github.com/ThePrimeagen/init.lua
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
