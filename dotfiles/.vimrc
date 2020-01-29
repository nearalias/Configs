set nu
set mouse=a
set bg=dark
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set hlsearch
set autoindent
highlight Comment ctermfg=green
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
filetype plugin indent on
syntax on

set completeopt-=preview

"Normal mode.
nnoremap <leader>cf :let g:clang_include_fixer_query_mode=0<cr>:pyf /usr/lib/clang-include-fixer/clang-include-fixer.py<cr>
"Query mode.
nnoremap <leader>qf :let g:clang_include_fixer_query_mode=1<cr>:pyf /usr/lib/clang-include-fixer/clang-include-fixer.py<cr>
