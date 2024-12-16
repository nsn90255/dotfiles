filetype plugin on
syntax on
set number
set relativenumber
set clipboard=unnamedplus
set scrolloff=10
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
endif
