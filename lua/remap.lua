vim.g.mapleader = ' '

vim.keymap.set('i', '<C-f>', '<Esc>', { desc = 'Exit insert mode' })
vim.keymap.set('n', '<leader><Tab>', vim.cmd.Ex, { desc = 'Open netrw' })
vim.keymap.set('n', '<leader>g', vim.cmd.Git, { desc = 'Open git TUI' })
vim.keymap.set('i', '<Tab>', 'coc#pum#visible() ? coc#pum#confirm() : "\\<Tab>"', { expr = true, desc = 'Autocomplete selected' })

-- https://github.com/ThePrimeagen/init.lua
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selected up with identation' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selected down with identation' })
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Change word in entire file' })
