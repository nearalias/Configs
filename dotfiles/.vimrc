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
