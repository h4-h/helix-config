vim.o.background = 'dark'

require('gruvbox').setup({
	italic = {
		strings = false,
		folds = false,
	}
})

vim.cmd([[colorscheme gruvbox]])
